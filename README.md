# `create-react-app` PureScript Example

How to integrate `create-react-app` with `PureScript`

## Run this Example

```shell
npm install
npm start
```

## Step by Step Instructions

### Create react application with typescript

```shell
npx create-react-app create-react-app-purescript --template typescript
```

### Install `craco`

Follow instructions to use `craco`

<https://github.com/gsoft-inc/craco/blob/master/packages/craco/README.md#installation>

### Add `craco-purescript-loader` plugin

Extend craco configuration to use `craco-purescript-loader`

<https://github.com/andys8/craco-purescript-loader>

### Install PureScript Dependencies

```shell
npm install purescript spago --save-dev
```
