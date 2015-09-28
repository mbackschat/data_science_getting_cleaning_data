# Codebook for tidy data set produced by run_analysis.R

Author: Martin Backschat

=======================================================

The script produces a data set which contains the tidy data.

Each row contains values for 68 variables:

* "id": integer - of the subject (person). Range: [1, 30]
* "activity": factor - Values are: LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS
* 40 time-domain variables
    + "t_bodyacc_mean_x": numeric - mean of the body acceleration signal in the X dim.
    + "t_bodyacc_mean_y": numeric - mean of the body acceleration signal in the Y dim.
    + "t_bodyacc_mean_z": numeric - mean of the body acceleration signal in the Z dim.
    + "t_bodyacc_std_x": numeric - standard deviation of the body acceleration signal in the X dim.
    + "t_bodyacc_std_y": numeric - standard deviation of the body acceleration signal in the Y dim.
    + "t_bodyacc_std_z": numeric - standard deviation of the body acceleration signal in the Z dim.
    + "t_gravityacc_mean_x": numeric - mean of the gravity acceleration signal in the X dim.
    + "t_gravityacc_mean_y": numeric - mean of the gravity acceleration signal in the X dim.
    + "t_gravityacc_mean_z": numeric - mean of the gravity acceleration signal in the Z dim.
    + "t_gravityacc_std_x": numeric - standard deviation of the gravity acceleration signal in the X dim.
    + "t_gravityacc_std_y": numeric - standard deviation of the gravity acceleration signal in the Y dim.
    + "t_gravityacc_std_z": numeric - standard deviation of the gravity acceleration signal in the Z dim.
    + "t_bodyaccjerk_mean_x": numeric - mean of the jerk signal in the X dim. (derived from the body acceleration mean signal)
    + "t_bodyaccjerk_mean_y": numeric - mean of the jerk signal in the Y dim. (derived from the body acceleration mean signal)
    + "t_bodyaccjerk_mean_z": numeric - mean of the jerk signal in the Z dim. (derived from the body acceleration mean signal)
    + "t_bodyaccjerk_std_x": numeric - standard deviation of the jerk signal in the X dim. (derived from the body acceleration standard deviation signal in the X dim.)
    + "t_bodyaccjerk_std_y": numeric - standard deviation of the jerk signal in the Y dim. (derived from the body acceleration standard deviation signal in the Y dim.)
    + "t_bodyaccjerk_std_z": numeric - standard deviation of the jerk signal in the Z dim. (derived from the body acceleration standard deviation signal in the Z dim.)
    + "t_bodygyro_mean_x": numeric - mean of the body angular speed signal in the X dim. signal)
    + "t_bodygyro_mean_y": numeric - mean of the body angular speed signal in the Y dim.
    + "t_bodygyro_mean_z": numeric - mean of the body angular speed signal in the Z dim.
    + "t_bodygyro_std_x": numeric - standard deviation of the body angular speed signal in the X dim.
    + "t_bodygyro_std_y": numeric - standard deviation of the body angular speed signal in the Y dim.
    + "t_bodygyro_std_z": numeric - standard deviation of the body angular speed signal in the Z dim.
    + "t_bodygyrojerk_mean_x": numeric - mean of the body angular acceleration signal in the X dim.
    + "t_bodygyrojerk_mean_y": numeric - mean of the body angular acceleration signal in the Y dim.
    + "t_bodygyrojerk_mean_z": numeric - mean of the body angular acceleration signal in the Z dim.
    + "t_bodygyrojerk_std_x": numeric - standard deviation of the body angular acceleration signal in the X dim.
    + "t_bodygyrojerk_std_y":numeric - standard deviation of the body angular acceleration signal in the Y dim.
    + "t_bodygyrojerk_std_z": numeric - standard deviation of the body angular acceleration signal in the Z dim.
    + "t_bodyaccmag_mean": numeric - mean of the body acceleration signal magnitude
    + "t_bodyaccmag_std": numeric - standard deviation of the body acceleration signal magnitude
    + "t_gravityaccmag_mean": numeric - mean of the gravity acceleration signal magnitude
    + "t_gravityaccmag_std": numeric - standard deviation of the gravity acceleration signal magnitude
    + "t_bodyaccjerkmag_mean": numeric - mean of the body acceleration jerk signal magnitude
    + "t_bodyaccjerkmag_std": numeric - standard deviation of the body acceleration jerk signal magnitude
    + "t_bodygyromag_mean": numeric - mean of the angular speed signal magnitude
    + "t_bodygyromag_std": numeric - standard deviation of the angular speed signal magnitude
    + "t_bodygyrojerkmag_mean": numeric - mean of the angular acceleration signal magnitude
    + "t_bodygyrojerkmag_std": numeric - standard deviation of the angular acceleration signal magnitude

* 26 frequency-domain variables : obtained from the time domain, via a fast fourier transform_
    + "f_bodyacc_mean_x": numeric - mean of the body acceleration signal in the X dim.
    + "f_bodyacc_mean_y": numeric - mean of the body acceleration signal in the Y dim.
    + "f_bodyacc_mean_z": numeric - mean of the body acceleration signal in the Z dim.
    + "f_bodyacc_std_x": numeric - standard deviation of the body acceleration signal in the X dim.
    + "f_bodyacc_std_y": numeric - standard deviation of the body acceleration signal in the Y dim.
    + "f_bodyacc_std_z": numeric - standard deviation of the body acceleration signal in the Z dim.
    + "f_bodyaccjerk_mean_x": numeric - mean of the jerk signal in the X dim. (derived from the body acceleration mean signal in the frequency domain)
    + "f_bodyaccjerk_mean_y": numeric - mean of the jerk signal in the Y dim. (derived from the body acceleration mean signal in the frequency domain)
    + "f_bodyaccjerk_mean_z": numeric - mean of the jerk signal in the Z dim. (derived from the body acceleration mean signal in the frequency domain)
    + "f_bodyaccjerk_std_x": numeric - standard deviation of the jerk signal in the X dim. (derived from the body acceleration mean signal in the frequency domain)
    + "f_bodyaccjerk_std_y": numeric - standard deviation of the jerk signal in the Y dim. (derived from the body acceleration mean signal in the frequency domain)
    + "f_bodyaccjerk_std_z": numeric - standard deviation of the jerk signal in the Z dim. (derived from the body acceleration mean signal in the frequency domain)
    + "f_bodygyro_mean_x": numeric - mean of the body angular speed signal in the X dim. signal)
    + "f_bodygyro_mean_y": numeric - mean of the body angular speed signal in the Y dim. signal)
    + "f_bodygyro_mean_z": numeric - mean of the body angular speed signal in the Z dim. signal)
    + "f_bodygyro_std_x": numeric - standard deviation of the body angular speed signal in the X dim. signal)
    + "f_bodygyro_std_y": numeric - standard deviation of the body angular speed signal in the Y dim. signal)
    + "f_bodygyro_std_z": numeric - standard deviation of the body angular speed signal in the Z dim. signal)
    + "f_bodyaccmag_mean": numeric - mean of the body acceleration signal magnitude
    + "f_bodyaccmag_std": numeric - standard deviation of the body acceleration signal magnitude
    + "f_bodyaccjerkmag_mean": numeric - mean of the body acceleration jerk signal magnitude
    + "f_bodyaccjerkmag_std": numeric - standard deviation of the body acceleration jerk signal magnitude
    + "f_bodygyromag_mean": numeric - mean of the body angular velocity signal magnitude
    + "f_bodygyromag_std": numeric - standard deviation of the body angular velocity signal magnitude
    + "f_bodygyrojerkmag_mean": numeric - mean of the body angular acceleration signal magnitude
    + "f_bodygyrojerkmag_std": numeric - standard deviation of the body angular acceleration signal magnitude

