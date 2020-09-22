To confirm what was said about the application repositories being managed through custom resources, head back to the **Terminal**.

```dashboard:open-dashboard
name: Terminal
```

Then run the following `kubectl` command to query details of any instances of the `apprepository` custom resource in the current namespace.

```execute
kubectl get apprepositories -o yaml
```

Here you should see the details of the custom resource corresponding to the `demo` application repository you added via the Kubeapps web interface. Specifically, Kubeapps creates the custom resource in the namespace for you.

As the available application repositories are managed through custom resources, it is possible to automate the setup of what application repositories are available in namespaces.

For example, any automation for creating namespaces for developers from a project template could add the custom resource. By doing this, a developer need only be given the ability to `list` and `get` the custom resource type. Their ability to `create` or `delete` the custom resource would be prevented, denying them from adding additional application repositories or deleting existing ones linked to the namespace. It is therefore possible to lock down what application repositories developers can use.
