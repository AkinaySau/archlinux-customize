# [Автомонтиролвание в ФМ](https://archlinux.org.ru/forum/topic/546/?page=4#post-4894)

Я нашел как починить монтирование!
Надо в /etc/polkit-1/rules.d/ создать файл с именем 99-my.rules (название особой роли не играет, важно только расширение и желателен номер) и прописать туда:
```
polkit.addRule(function(action, subject) {
    if (action.id.indexOf("org.freedesktop.udisks2.") == 0 && subject.isInGroup("storage")) {
        return polkit.Result.YES;
    }
});
```
Как сами видите, юзер должен быть в группе storage.

