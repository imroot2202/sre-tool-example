#!/bin/bash

list() {
    namespace=$1
    if [ -n "$namespace" ]; then
        kubectl get deployments -n "$namespace" || echo "Error: Unable to list deployments in namespace $namespace"
    else
        kubectl get deployments --all-namespaces || echo "Error: Unable to list deployments"
    fi
}

scale() {
    replicas=$1
    deployment=$2
    namespace=$3
    if [ -n "$namespace" ]; then
        kubectl scale --replicas="$replicas" deployment/"$deployment" -n "$namespace" || echo "Error: Unable to scale deployment $deployment in namespace $namespace"
    else
        kubectl scale --replicas="$replicas" deployment/"$deployment" || echo "Error: Unable to scale deployment $deployment"
    fi
}

info() {
    deployment=$1
    namespace=$2
    if [ -n "$namespace" ]; then
        kubectl describe deployment/"$deployment" -n "$namespace" || echo "Error: Unable to get info for deployment $deployment in namespace $namespace"
    else
        kubectl describe deployment/"$deployment" || echo "Error: Unable to get info for deployment $deployment"
    fi
}

if [ "$1" == "list" ]; then
    list "$2"
elif [ "$1" == "scale" ]; then
    scale "$2" "$3" "$4"
elif [ "$1" == "info" ]; then
    info "$2" "$3"
else
    echo "Usage: sre <command> [<args>]"
    echo "Commands:"
    echo "  list [--namespace <namespace>]: List deployments"
    echo "  scale --replicas <replicas> --deployment <deployment_name> [--namespace <namespace>]: Scale a deployment"
    echo "  info --deployment <deployment_name> [--namespace <namespace>]: Get info about a deployment"
fi
