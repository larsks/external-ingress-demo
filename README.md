## Deploying

1. Deploy manifests in `stage1`:

    ```
    kubectl apply -k stage1
    ```

    Wait for all operator installations to complete.

    <!--
    kubectl wait --for jsonpath='{.status.phase}=Succeeded' csv --all -A
    -->

2. Deploy manifests in `stage2`:

    ```
    kubectl apply -k stage2
    ```

3. Deploy manifests in `stage3`:

    ```
    kubectl apply -k stage3
    ```

4. Deploy the patches;

    ```
    kubectl apply -k patches
    ```

5. Deploy the demo:

    ```
    kubectl apply -k demo
    ```
