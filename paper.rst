.. role:: raw-tex(raw)
  :format: latex html
.. role:: raw-math(raw)
  :format: latex html

Visual Odometry for Autonomous Underwater Vehicles
==================================================
| *Stephan Wirth*
| *Universitat de les Illes Balears*
| *stephan.wirth@uib.es*

| *Pep Lluís Negre Carrasco*
| *Universitat de les Illes Balears*
| *pepllu.negre@gmail.com*

Introduction
------------
Vision based localization, mapping and motion estimation algorithms are widely used in ground-based and aerial robotics. They have proven to be a precise and low-cost alternative to inertial measurement units and laser scanners. In this paper we show that vision based odometry can be used by autonomous underwater vehicles (AUVs) that navigate close to the seabed for incremental pose estimation and 3D reconstruction of small areas. We present experiments carried out using two different AUVs equipped with a downward looking stereo camera comparing vision based pose estimates with ground truth and DVL measurements.

Odometry Framework
------------------
The visual odometry system we choose is based on stereo images and follows :raw-tex:`\cite{libviso2}`. The processing pipeline contains five consecutive steps: image acquisition, preprocessing, feature extraction, feature matching, and motion estimation. 

Image Acquisition

The design of the stereo system determines the precision of the overall system. Generally speaking, higher resolution, greater field of view and greater baseline improve precision. However, increasing resolution increases processing time as well, greater field of view reduces details and a greater baseline can lead to matching problems as the scene may look different from left and right camera positions. We formally present these variables and the dependencies on the environment.
Preprocessing

The first step of working with stereo images is undistortion and rectification. After this process, corresponding points of left and right images lie on the same line.

Feature Extraction

Feature extraction is done by applying blob and corner detection masks on the image. The result is a huge amount of features of four classes. Non-minimum and non-maximum suppression is used for filtering.

Matching

The feature matching 

Motion Estimation

Evaluation Method
-----------------

As visual odometry suffers from drift, comparing whole trajectories, i.e. poses in time directly to ground truth is not very meaningful. Instead, we subdivide the path into small pieces and compare relative transformations for each piece to the matching piece in our ground truth. We evaluate translation and rotation error for every degree of freedom.

Experiment Results
--------------------

The experiments carried out use data gathered during the TRIDENT project both in laboratory and harbour conditions using Girona500 (see [REF]) as vehicle. Ground truth for the laboratory experiment is extracted matching each image that has been captured against the known image that is printed on the floor of the test pool.
For the harbour experiment, the determination of ground truth is more difficult, as no external sensors have been used. One aim of the project was the construction of a consistent seabed mosaic. The computation of this mosaic includes global optimization of all camera poses. The resulting trajectory does not suffer from drift and is therefore chosen as our ground truth reference.

CIRS Lab
^^^^^^^^

Roses Harbour
^^^^^^^^^^^^^

3D Reconstruction
^^^^^^^^^^^^^^^^^

Conclusion
----------

- Not suitable for long term pose estimation due to drift and possible failure, but as aid for information filter
- Very good rotation estimates for rotations around the optical axis
- Highest errors in pitch and roll estimation (as expected)
- Useful for online (!) 3D reconstruction of small areas

.. raw:: latex

  \bibliographystyle{plain}
  \bibliography{references}
