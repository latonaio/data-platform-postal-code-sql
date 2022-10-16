# data-platform-postal-code-sql 
data-platform-postal-code-sql は、データ連携基盤において、郵便番号データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-postal-code-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.xxx.com/api/API_XXXXX_XXX/overview

## sqlの設定ファイル
data-platform-postal-code-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* data-platform-postal-code-sql-postal-code-data.sql（データ連携基盤 郵便番号 - 郵便番号データ）
* data-platform-postal-code-sql-postal-code-data-setup.sql（データ連携基盤 郵便番号 - 郵便番号データ 設定）
* data-platform-postal-code-sql-postal-code-address-data.sql（データ連携基盤 郵便番号 - 郵便番号住所データ）
* data-platform-postal-code-sql-postal-code-address-data-setup.sql（データ連携基盤 郵便番号 - 郵便番号住所データ 設定）

## 設定値

setupファイルには、各テーブルに対応した設定値が含まれています。  
設定値のサンプルは次の通りです。

| 郵便番号 | 国コード | ローカル地域名称 | ローカル地域コード | 市区町村 | 地名・番地・建物名・部屋番号              | 郵便番号住所連結テキスト                       | 
| -------- | -------- | ---------- | ------------------ | ---------- | ------------------------ | ---------------------------------- | 
| 1050011  | JP       | 東京都     | 13                 | 港区       | 芝公園                   | 東京都港区芝公園                   | 
| 1050012  | JP       | 東京都     | 13                 | 港区       | 芝大門                   | 東京都港区芝大門                   | 
| 1080072  | JP       | 東京都     | 13                 | 港区       | 白金                     | 東京都港区白金                     | 
| 1080071  | JP       | 東京都     | 13                 | 港区       | 白金台                   | 東京都港区白金台                   | 
| 1050004  | JP       | 東京都     | 13                 | 港区       | 新橋                     | 東京都港区新橋                     | 
| 1350091  | JP       | 東京都     | 13                 | 港区       | 台場                     | 東京都港区台場                     | 
| 1080074  | JP       | 東京都     | 13                 | 港区       | 高輪                     | 東京都港区高輪                     | 

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
