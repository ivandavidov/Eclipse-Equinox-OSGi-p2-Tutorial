# Eclipse-Equinox-OSGi-p2-Tutorial

## About
This project includes Eclipse Equinox OSGi specific samples which cover the following scenarios:

* Publisher scenario: Create a simple p2 repository which contains only one bundle. This is the Equniox launcher bundle. This invokes the Publisher (org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher) application. The Publisher application creates p2 metadata for the repository containing the single bundle. Check the created `test_repo` folder.

* Director scenario: Create a p2 profile which contains metadata for the bundle from the previously created repository. This involves the Director (org.eclipse.equinox.p2.director) application. Check the created `test_profile` foldr. TODO more explanations.

* Console scenario: Start an Equinox OSGi console.

These scenarios run only on Windows as `.cmd` scripts are provided.
TODO - add explanations about the agent and the connection between the downloaded equinox repository, the agent and the applications.

## Getting started
Start with the `README.txt` inside the `equinox_repo` folder.
Then run the command-line scripts.

## LICENSE
Check out the license text inside  the `LICENSE` file.
