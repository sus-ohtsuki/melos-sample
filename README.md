# Melos Sample App

このプロジェクトは、[Melos](https://melos.invertase.dev/)を使ったFlutterアプリのモノレポ構成のサンプルです。Melosによるマルチパッケージ管理を学ぶことを目的とし、Flutterの複数アプリと共通のパッケージ管理についても理解を深めるために作成されています。

## プロジェクト構成

このリポジトリには、2つのFlutterアプリと共通パッケージが含まれています。

```
melos_sample
├── apps
│   ├── membership_app1   # アプリケーション1
│   └── membership_app2   # アプリケーション2
├── packages
│   ├── api_client        # API通信関連のパッケージ
│   ├── core              # 各アプリで共通して使用するユーティリティやロジック
│   └── widget
│       ├── theme
│       ├── ui
│       └── app_design    # widgetbook用のUIデザインカタログアプリ
├── melos.yaml            # Melosの設定ファイル
├── pubspec.yaml          # プロジェクト全体のpubspec設定
└── README.md

```

- **app1**: アプリ1のプロジェクト。テーマが赤系でデザインされています。
- **app2**: アプリ2のプロジェクト。テーマが青系でデザインされています。
- **packages**: 両アプリが共通で使用するパッケージ。例えば、ユーティリティ関数や共通のウィジェット、テーマ管理が含まれています。

## セットアップ手順

1. **MelosのSet Up**

   Install [melos](https://melos.invertase.dev/getting-started)

2. **依存関係の解決**

   Melosでプロジェクト全体の依存関係をインストールします。

   ```bash
   melos bootstrap
   ```

3. **各アプリの実行**

   ```bash
   cd <app-name>
   ```

   ```bash
   flutter run lib/main.dart
   ```

## プロジェクトの特徴

- **Melosによるモノレポ管理**: Melosを用いたモノレポ構成により、複数のアプリと共通パッケージを一元管理しています。各アプリが共通パッケージを参照し、依存関係の解決やバージョン管理が容易になっています。

- **テーマの分離**: アプリ1とアプリ2は、それぞれ異なるテーマ（赤系と青系）を持っています。テーマは`packages`内の`widget`パッケージに定義され、アプリごとに異なるカラースキーマを簡単に適用できます。

- **共通パッケージ**: 共通パッケージには、各アプリで再利用されるユーティリティ関数やウィジェット、テーマ設定が含まれています。これにより、重複コードを削減し、効率的な開発が可能になります。

## 使用技術・ツール

- **Flutter**: クロスプラットフォームのUIフレームワーク
- **Dart**: Flutterアプリケーションのプログラミング言語
- **Melos**: 複数のFlutterパッケージを管理するモノレポ管理ツール

## 注意事項

このプロジェクトは学習用に構築されたものであり、本番環境での使用を想定していません。

### Credits

このアプリのデザインは、Figmaのフリーテンプレートを使用しており、以下の制作者にクレジットを表示します。

- **デザイン提供**: [Food App Design UI Template](https://www.figma.com/community/file/1362393407429980800/food-app-design-ui-template) by [@dscodedesign](https://www.figma.com/@dscodedesign)

このクレジット表示は、テンプレートのライセンス条件に基づいて行われています。
