# React + Vite + Terraform을 이용한 AWS S3와 CloudFront 배포

이 프로젝트는 **React**와 **Vite**로 빌드한 웹 애플리케이션을 **AWS S3**에 배포하고, **CloudFront**를 통해 CDN으로 배포하는 자동화 과정을 설명합니다. **Terraform**을 사용하여 AWS 인프라를 설정합니다.

![terraform-aws](https://miro.medium.com/v2/resize:fit:741/1*JuxIu_Ml0U3BBahoSSWAFA.png)

## 요구 사항

- **AWS 계정** 및 **AWS CLI** 설정
- **Terraform** 설치
- **Node.js** 및 **npm** 설치

## 1. Terraform 설정

### AWS 자격 증명 설정

AWS CLI를 통해 자격 증명을 설정합니다.

```bash
aws configure
```

## 2. React 애플리케이션 빌드

```
npm install
npm run build
```

## 3. Terraform 수행

Terraform으로 S3와 CloudFront 프로비저닝

```
cd terraform
terraform init
terraform apply
```

## Reference

https://stackoverflow.com/questions/57456167/uploading-multiple-files-in-aws-s3-from-terraform

---

## vite

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

## Expanding the ESLint configuration

```js
export default tseslint.config({
  extends: [
    // Remove ...tseslint.configs.recommended and replace with this
    ...tseslint.configs.recommendedTypeChecked,
    // Alternatively, use this for stricter rules
    ...tseslint.configs.strictTypeChecked,
    // Optionally, add this for stylistic rules
    ...tseslint.configs.stylisticTypeChecked,
  ],
  languageOptions: {
    // other options...
    parserOptions: {
      project: ["./tsconfig.node.json", "./tsconfig.app.json"],
      tsconfigRootDir: import.meta.dirname,
    },
  },
});
```

```js
// eslint.config.js
import reactX from "eslint-plugin-react-x";
import reactDom from "eslint-plugin-react-dom";

export default tseslint.config({
  plugins: {
    // Add the react-x and react-dom plugins
    "react-x": reactX,
    "react-dom": reactDom,
  },
  rules: {
    // other rules...
    // Enable its recommended typescript rules
    ...reactX.configs["recommended-typescript"].rules,
    ...reactDom.configs.recommended.rules,
  },
});
```
