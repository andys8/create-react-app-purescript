# `create-react-app` PureScript Example

How to integrate [`create-react-app`](https://create-react-app.dev) with [PureScript](https://www.purescript.org)

## Try this example

This example is a React application containing a [PureScript component](./src/Counter.purs).

```shell
npm install
npm start
```

## Step by Step Instructions

Either follow these steps or clone/fork this example repository.

### Create react application with TypeScript

```shell
npx create-react-app create-react-app-purescript --template typescript
```

### Install `craco`

Follow instructions to use `craco` to overwrite parts of the `create-react-app` configuration

<https://github.com/gsoft-inc/craco/blob/master/packages/craco/README.md#installation>

### Add `craco-purescript-loader` plugin

Extend craco configuration to use `craco-purescript-loader`

<https://github.com/andys8/craco-purescript-loader>

### Setup PureScript

Install PureScript (compiler) and initialize spago (package manager)

```shell
npm install purescript spago --save-dev
npx spago init
```

Add npm script in `package.json` and install dependencies with `npm install`

```json
{
  "postinstall": "spago build --deps-only"
}
```

### Install `react-basic-hooks`

This example is using [`react-basic`](https://github.com/lumihq/purescript-react-basic)
and [`react-basic-hooks`](https://github.com/spicydonuts/purescript-react-basic-hooks)

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
function App() {
  return <Counter />;
}
```
