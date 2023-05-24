#!/usr/bin/env python3

import cv2
import os
import pickle
import numpy as np

def load_images_from_folder(folder):
    images = []
    for filename in os.listdir(folder):
        img = cv2.imread(os.path.join(folder,filename))
        if img is not None and len(img.shape) == 3 and img.shape[2] == 3:
            images.append(img)
    return images



def create_face_dataset(images_folder, dataset_filename):
    # Initialize the list of images and labels
    images = []
    labels = []

    # Set the size of the resized images
    size = (320, 240)

    # Loop over each person's directory
    for person_dir in os.listdir(images_folder):
        # Get the path to the person's directory
        person_path = os.path.join(images_folder, person_dir)

        # Loop over each image in the person's directory
        for image_file in os.listdir(person_path):
            # Get the path to the image file
            image_path = os.path.join(person_path, image_file)

            # Load the image and convert it to grayscale
            image = cv2.imread(image_path)
            gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

            # Resize the image to the fixed size
            resized_image = cv2.resize(gray_image, size)

            # Add the resized image and label to the lists
            images.append(resized_image)
            labels.append(person_dir)

    # Create the face recognizer using the Eigenfaces algorithm
    face_recognizer = cv2.face.EigenFaceRecognizer_create()

    # Convert the list of labels to a set to get unique names
    unique_labels = set(labels)

    # Create a dictionary to map each label to a unique integer
    label_dict = {label: i for i, label in enumerate(unique_labels)}

    # Convert the list of labels to a list of integers using the label dictionary
    int_labels = [label_dict[label] for label in labels]

    # Train the face recognizer on the grayscale images
    face_recognizer.train(images, np.array(int_labels))

    # Save the face recognizer to a file
    face_recognizer.save(dataset_filename)

    # Save the label dictionary to a file using pickle
    with open('/home/edin/Desktop/ROS/src/exercise4/recognition_files/face_labels.pkl', 'wb') as f:
        pickle.dump(label_dict, f)
        
if __name__ == '__main__':
    # Set the path to the folder containing the images
    images_folder = "/home/edin/Desktop/ROS/src/exercise7/exercise7/meshes/rins_2023_task3_meshes/img_for_training"

    # Set the filename for the face dataset
    dataset_filename = "/home/edin/Desktop/ROS/src/exercise4/recognition_files/face_dataset.xml"

    # Create the face dataset
    create_face_dataset(images_folder, dataset_filename)