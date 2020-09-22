LAB - Kubeapps Testing
======================

Workshop for testing use of Kubeapps.

The workshop assumes you have Kubeapps installed in the `kubeapps` namespace.

For more detailed information on how to create and deploy workshops, consult
the documentation for edukates at:

* https://docs.edukates.io

If you already have the edukates operator installed and configured, to deploy
and view this sample workshop, run:

```
kubectl apply -f https://raw.githubusercontent.com/eduk8s-tests/lab-kubeapps-testing/master/resources/workshop.yaml
kubectl apply -f https://raw.githubusercontent.com/eduk8s-tests/lab-kubeapps-testing/master/resources/training-portal.yaml
```

This will deploy a training portal hosting just this workshop. To get the
URL for accessing the training portal run:

```
kubectl get trainingportal/lab-kubeapps-testing
```

The training portal is by default configured to allow anonymous access.
