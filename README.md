# Анализ данных интернет-магазина

## Описание
Проект построен на SQLite-базе с данными онлайн-магазина.

### Таблицы:
- `customers` — клиенты
- `orders` — заказы
- `order_items` — позиции в заказах
- `products` — товары
- `categories` — категории товаров

## Что сделано:
1. Общая аналитика: количество заказов, выручка, средний чек
2. Воронка заказов по статусам
3. RFM-анализ для сегментации клиентов
4. Анализ продаж по категориям
5. Определение самых прибыльных клиентов

## Структура проекта
```
sql_ecommerce_analysis/
├── data/
│   └── ecommerce.db              # SQLite база данных
├── queries/
│   ├── 01_eda.sql
│   ├── 02_orders_funnel.sql
│   ├── 03_rfm.sql
│   ├── 04_product_sales.sql
│   └── 05_top_customers.sql
├── dashboards/
│   └── ecommerce_dashboard.pdf   # Визуальный отчет
└── README.md
```

## Используемый стек
- SQLite
- SQL
- Matplotlib, Seaborn