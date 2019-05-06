# Managing Payments

## Введение

Перед тем как продолжить читать данную статью, вам необходимо понимать  [базовые концепции](#).

## Управление платежными маршрутами

![](images/route-overview.png)

В списке всех доступных платежных маршрутов можно активировать / дективировать маршрут.

В таком случае это влияет на все схемы маршрутизации, в которых данный платежный маршрут используется, поэтому будьте внимательны при деактивации маршута.

Также, в редактировании маршрута доступна возможность указать его себестоимость — комиссию платежного провайдера для мерчант-аккаунта по данному платежному сервису.

За это отвечают свойства: Fee min, Fee rate, Fee fixed, Fee max.

## Управление платежами

## Создание платежа

![](images/create-payment.png)

## Просмотр платежей

## Обзор платежа

### General

На вкладке "general" вы можете удидеть такие данные о платеже, как:

-   Статус и резолюция платежа
-   Описание платежа
-   Суммы платежа
-   Временные метки
-   Reference ID

### Statements

Платежные выписки от провайдера отображают срез информации по платежу на момент получения выписки.

Выписка может быть получена различными способами. Это может быть:

-   callback — Получение уведомления от провайдера.
-   reconsiliation — Сверка с провайдером по API.
-   manual — Ручное внесение информации о платеже.
-   api-response — Ответ от процессинга.

Ручное добавление выписки позволяет изменять статус платежа, если его данные не актуальны.

### Callbacks

На данной вкладке отображаются уведомления, отправленные на callback_url и статус их отправки.

Если вы хотите повторно отправить уведомление на указанные callback_url, то вы можете воспользоваться кнопкой "Resend callback".

Также, если провалиться в коллбек, то можно увидеть детали о запросе и ответе от сервера и количество попыток.

### Customer

Если данные клиента были переданы при инициализации операции, то на данной вкладке вы можете увидеть все данные о клиенте, а также, перейти на его детальный обзор.

### Payment Request

Если операция была создана в контексте платежного запроса, то на этом экране вы увидете его детали и сможете перейти на его обзор.