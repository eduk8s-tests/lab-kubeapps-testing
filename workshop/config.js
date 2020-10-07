function initialize(workshop) {
    workshop.load_workshop();

    exec("kubectl get secret $(kubectl get serviceaccount kubeapps-user -o jsonpath='{.secrets[].name}') -o jsonpath='{.data.token}' | base64 --decode", (error, stdout, stderr) => {
        workshop.data_variable('KUBEAPPS_TOKEN', stdout);
    });
}

exports.default = initialize;

module.exports = exports.default;
