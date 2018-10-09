# stunning-potato

Bootstrap script to restore a new Mac

## Flow

1. Install Homebrew
2. Restore local settings
3. Install software
4. Install programming languages
5. Setup OSX settings
6. Reboot

## Usage

```bash
$ curl -L -o potato.zip https://github.com/dvdizon/stunning-potato/archive/master.zip
$ unzip potato.zip
$ pushd stunning-potato-master
$ ./restore.sh
```

## Additional Info

For zsh, customization can be found here:

- [zsh Auto suggestions like fsh](https://github.com/zsh-users/zsh-autosuggestions)
- [powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)

Custom prompt for powerlevel9k theme

```sh
prompt_kubecontext() {
  local kubectl_version="$(kubectl version --client 2>/dev/null)"

  if [[ -n "$kubectl_version" ]]; then
    # Get the current Kuberenetes context
    local cur_ctx=$(kubectl config view -o=jsonpath='{.current-context}')
    cur_namespace="$(kubectl config view -o=jsonpath="{.contexts[?(@.name==\"${cur_ctx}\")].context.namespace}")"
    # If the namespace comes back empty set it default.
    if [[ -z "${cur_namespace}" ]]; then
      cur_namespace="default"
    fi

    local k8s_final_text=""

    cur_ctx_truncated="$(echo $cur_ctx | cut -c1-7)..."

    if [[ "$cur_ctx" == "$cur_namespace" ]]; then
      # No reason to print out the same identificator twice
      k8s_final_text="$cur_ctx_truncated"
    else
      k8s_final_text="$cur_ctx_truncated/($cur_namespace)"
    fi


    "$1_prompt_segment" "$0" "$2" "blue" "white --bold" "$k8s_final_text" "KUBERNETES_ICON"
  fi
}
```
