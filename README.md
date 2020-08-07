# `create-react-app` PureScript Example

How to integrate `create-react-app` with `PureScript`

## Run this Example

```shell
npm install
npm start
```

## Step by Step Instructions

Either follow these steps or clone/fork this example repository.

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

### Install PureScript and initialize spago

```shell
npm install purescript spago --save-dev
npx spago init
```

Add npm script:

```json
{
  "postinstall": "spago build --deps-only"
}
```

Install dependencies with `npm i`.

### Install spago `react-basic-hooks`

```shell
npx spago install react-basic react-basic-dom react-basic-hooks
```

### Add PureScript React Component

- Add a PureScript component: [`Counter.ps`](./src/Counter.purs)
- Allow module import in TS: [`purescript-module.d.ts`](src/purescript-module.d.ts)
- Import the component and use it: [`App.tsx`](./src/App.tsx)

```tsx
import { mkCounter as Counter } from "./Counter.purs";
// ...
<Counter />;
```
