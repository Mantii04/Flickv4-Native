package O3;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class H {
    public static Map<String, String> a(Locale locale) {
        HashMap q6 = b.c.q("error_initializing_player", "An error occurred while initializing the YouTube player.", "get_youtube_app_title", "Get YouTube App");
        q6.put("get_youtube_app_text", "This app won't run without the YouTube App, which is missing from your device");
        q6.put("get_youtube_app_action", "Get YouTube App");
        q6.put("enable_youtube_app_title", "Enable YouTube App");
        q6.put("enable_youtube_app_text", "This app won't work unless you enable the YouTube App.");
        q6.put("enable_youtube_app_action", "Enable YouTube App");
        q6.put("update_youtube_app_title", "Update YouTube App");
        q6.put("update_youtube_app_text", "This app won't work unless you update the YouTube App.");
        q6.put("update_youtube_app_action", "Update YouTube App");
        b(q6, locale.getLanguage());
        String valueOf = String.valueOf(locale.getLanguage());
        String valueOf2 = String.valueOf(locale.getCountry());
        StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 1);
        sb.append(valueOf);
        sb.append("_");
        sb.append(valueOf2);
        b(q6, sb.toString());
        return q6;
    }

    public static void b(HashMap hashMap, String str) {
        if ("af".equals(str)) {
            hashMap.put("error_initializing_player", "Kon nie die YouTube-speler inisialiseer nie.");
            hashMap.put("get_youtube_app_title", "Kry YouTube-program");
            hashMap.put("get_youtube_app_text", "Hierdie program sal nie loop sonder die YouTube-program, wat ontbreek van jou toestel, nie");
            hashMap.put("get_youtube_app_action", "Kry YouTube-program");
            hashMap.put("enable_youtube_app_title", "Aktiveer YouTube-program");
            hashMap.put("enable_youtube_app_text", "Hierdie program sal nie werk tensy jy die YouTube-program aktiveer nie.");
            hashMap.put("enable_youtube_app_action", "Aktiveer YouTube-program");
            hashMap.put("update_youtube_app_title", "Dateer YouTube-program op");
            hashMap.put("update_youtube_app_text", "Hierdie program sal nie werk tensy jy die YouTube-program opdateer nie.");
            hashMap.put("update_youtube_app_action", "Dateer YouTube-program op");
            return;
        }
        if ("am".equals(str)) {
            hashMap.put("error_initializing_player", "የYouTube አጫዋቹን በማስጀመር ላይ ሳለ አንድ ስህተት ተከስቷል።");
            hashMap.put("get_youtube_app_title", "የYouTube መተግበሪያውን ያግኙ");
            hashMap.put("get_youtube_app_text", "ይህ መተግበሪያ ያለ YouTube መተግበሪያው አይሂድም፣ እሱ ደግሞ በመሣሪያዎ ላይ የለም።");
            hashMap.put("get_youtube_app_action", "የYouTube መተግበሪያውን ያግኙ");
            hashMap.put("enable_youtube_app_title", "የYouTube መተግበሪያውን ያንቁ");
            hashMap.put("enable_youtube_app_text", "የYouTube መተግበሪያውን እስካላነቁ ድረስ ይህ መተግበሪያ አይሰራም።");
            hashMap.put("enable_youtube_app_action", "የYouTube መተግበሪያውን ያንቁ");
            hashMap.put("update_youtube_app_title", "የYouTube መተግበሪያውን ያዘምኑ");
            hashMap.put("update_youtube_app_text", "የYouTube መተግበሪያውን እስካላዘመኑት ድረስ ይህ መተግበሪያ አይሰራም።");
            hashMap.put("update_youtube_app_action", "የYouTube መተግበሪያውን ያዘምኑ");
            return;
        }
        if ("ar".equals(str)) {
            hashMap.put("error_initializing_player", "حدث خطأ أثناء تهيئة مشغل YouTube.");
            hashMap.put("get_youtube_app_title", "الحصول على تطبيق YouTube");
            hashMap.put("get_youtube_app_text", "لن يعمل هذا التطبيق بدون تطبيق YouTube الذي لا يتوفر على جهازك");
            hashMap.put("get_youtube_app_action", "الحصول على تطبيق YouTube");
            hashMap.put("enable_youtube_app_title", "تمكين تطبيق YouTube");
            hashMap.put("enable_youtube_app_text", "لن يعمل هذا التطبيق ما لم يتم تمكين تطبيق YouTube.");
            hashMap.put("enable_youtube_app_action", "تمكين تطبيق YouTube");
            hashMap.put("update_youtube_app_title", "تحديث تطبيق YouTube");
            hashMap.put("update_youtube_app_text", "لن يعمل هذا التطبيق ما لم يتم تحديث تطبيق YouTube.");
            hashMap.put("update_youtube_app_action", "تحديث تطبيق YouTube");
            return;
        }
        if ("be".equals(str)) {
            hashMap.put("error_initializing_player", "Памылка падчас ініцыялізацыі прайгравальнiка YouTube.");
            hashMap.put("get_youtube_app_title", "Спампаваць прыкладанне YouTube");
            hashMap.put("get_youtube_app_text", "Гэта прыкладанне не будзе працаваць без прыкладання YouTube, якое адсутнічае на прыладзе");
            hashMap.put("get_youtube_app_action", "Спампаваць прыкладанне YouTube");
            hashMap.put("enable_youtube_app_title", "Уключыць прыкладанне YouTube");
            hashMap.put("enable_youtube_app_text", "Гэта прыкладанне не будзе працаваць, пакуль вы не ўключыце прыкладанне YouTube.");
            hashMap.put("enable_youtube_app_action", "Уключыць прыкладанне YouTube");
            hashMap.put("update_youtube_app_title", "Абнавiць прыкладанне YouTube");
            hashMap.put("update_youtube_app_text", "Гэта прыкладанне не будзе працаваць, пакуль вы не абнавiце прыкладанне YouTube.");
            hashMap.put("update_youtube_app_action", "Абнавiць прыкладанне YouTube");
            return;
        }
        if ("bg".equals(str)) {
            hashMap.put("error_initializing_player", "При подготвянето на плейъра на YouTube за работа възникна грешка.");
            hashMap.put("get_youtube_app_title", "Изтегл. на прил. YouTube");
            hashMap.put("get_youtube_app_text", "Това приложение няма да работи без приложението YouTube, което липсва на устройството ви");
            hashMap.put("get_youtube_app_action", "Изтегл. на прил. YouTube");
            hashMap.put("enable_youtube_app_title", "Акт. на прил. YouTube");
            hashMap.put("enable_youtube_app_text", "Това приложение няма да работи, освен ако не активирате приложението YouTube.");
            hashMap.put("enable_youtube_app_action", "Акт. на прил. YouTube");
            hashMap.put("update_youtube_app_title", "Актул. на прил. YouTube");
            hashMap.put("update_youtube_app_text", "Това приложение няма да работи, освен ако не актуализирате приложението YouTube.");
            hashMap.put("update_youtube_app_action", "Актул. на прил. YouTube");
            return;
        }
        if ("ca".equals(str)) {
            hashMap.put("error_initializing_player", "S'ha produït un error en iniciar el reproductor de YouTube.");
            hashMap.put("get_youtube_app_title", "Obtenció aplicac. YouTube");
            hashMap.put("get_youtube_app_text", "Aquesta aplicació no funcionarà sense l'aplicació de YouTube, que encara no és al dispositiu.");
            hashMap.put("get_youtube_app_action", "Obtén l'aplic. de YouTube");
            hashMap.put("enable_youtube_app_title", "Activació aplic. YouTube");
            hashMap.put("enable_youtube_app_text", "Aquesta aplicació no funcionarà fins que no activis l'aplicació de YouTube.");
            hashMap.put("enable_youtube_app_action", "Activa aplicació YouTube");
            hashMap.put("update_youtube_app_title", "Actualitz. aplic. YouTube");
            hashMap.put("update_youtube_app_text", "Aquesta aplicació no funcionarà fins que no actualitzis l'aplicació de YouTube.");
            hashMap.put("update_youtube_app_action", "Actualitza aplic. YouTube");
            return;
        }
        if ("cs".equals(str)) {
            hashMap.put("error_initializing_player", "Při inicializaci přehrávače YouTube došlo k chybě.");
            hashMap.put("get_youtube_app_title", "Stáhněte aplikaci YouTube");
            hashMap.put("get_youtube_app_text", "Tuto aplikaci nelze spustit bez aplikace YouTube, kterou v zařízení nemáte nainstalovanou");
            hashMap.put("get_youtube_app_action", "Stáhnout aplikaci YouTube");
            hashMap.put("enable_youtube_app_title", "Aktivujte aplik. YouTube");
            hashMap.put("enable_youtube_app_text", "Ke spuštění této aplikace je třeba aktivovat aplikaci YouTube.");
            hashMap.put("enable_youtube_app_action", "Zapnout aplikaci YouTube");
            hashMap.put("update_youtube_app_title", "Aktualizujte apl. YouTube");
            hashMap.put("update_youtube_app_text", "Ke spuštění této aplikace je třeba aktualizovat aplikaci YouTube.");
            hashMap.put("update_youtube_app_action", "Aktualizovat apl. YouTube");
            return;
        }
        if ("da".equals(str)) {
            hashMap.put("error_initializing_player", "Der opstod en fejl under initialisering af YouTube-afspilleren.");
            hashMap.put("get_youtube_app_title", "Få YouTube-appen");
            hashMap.put("get_youtube_app_text", "Denne app kan ikke køre uden YouTube-appen, som ikke findes på din enhed");
            hashMap.put("get_youtube_app_action", "Få YouTube-appen");
            hashMap.put("enable_youtube_app_title", "Aktivér YouTube-appen");
            hashMap.put("enable_youtube_app_text", "Denne app fungerer ikke, medmindre du aktiverer YouTube-appen.");
            hashMap.put("enable_youtube_app_action", "Aktivér YouTube-appen");
            hashMap.put("update_youtube_app_title", "Opdater YouTube-appen");
            hashMap.put("update_youtube_app_text", "Denne app fungerer ikke, hvis du ikke opdaterer YouTube-appen.");
            hashMap.put("update_youtube_app_action", "Opdater YouTube-appen");
            return;
        }
        if ("de".equals(str)) {
            hashMap.put("error_initializing_player", "Bei der Initialisierung des YouTube-Players ist ein Fehler aufgetreten.");
            hashMap.put("get_youtube_app_title", "YouTube App herunterladen");
            hashMap.put("get_youtube_app_text", "Diese App kann nur ausgeführt werden, wenn die YouTube App bereitgestellt ist. Diese ist auf deinem Gerät nicht vorhanden.");
            hashMap.put("get_youtube_app_action", "YouTube App herunterladen");
            hashMap.put("enable_youtube_app_title", "YouTube App aktivieren");
            hashMap.put("enable_youtube_app_text", "Diese App funktioniert nur, wenn die YouTube App aktiviert wird.");
            hashMap.put("enable_youtube_app_action", "YouTube App aktivieren");
            hashMap.put("update_youtube_app_title", "YouTube App aktualisieren");
            hashMap.put("update_youtube_app_text", "Diese App funktioniert nur, wenn die YouTube App aktualisiert wird.");
            hashMap.put("update_youtube_app_action", "YouTube App aktualisieren");
            return;
        }
        if ("el".equals(str)) {
            hashMap.put("error_initializing_player", "Παρουσιάστηκε σφάλμα κατά την προετοιμασία του προγράμματος αναπαραγωγής του YouTube.");
            hashMap.put("get_youtube_app_title", "Λήψη YouTube");
            hashMap.put("get_youtube_app_text", "Δεν είναι δυνατή η εκτέλεση αυτής της εφαρμογής χωρίς την εφαρμογή YouTube, η οποία απουσιάζει από τη συσκευή σας");
            hashMap.put("get_youtube_app_action", "Λήψη YouTube");
            hashMap.put("enable_youtube_app_title", "Ενεργοποίηση YouTube");
            hashMap.put("enable_youtube_app_text", "Δεν είναι δυνατή η λειτουργία αυτής της εφαρμογής εάν δεν ενεργοποιήσετε την εφαρμογή YouTube.");
            hashMap.put("enable_youtube_app_action", "Ενεργοποίηση YouTube");
            hashMap.put("update_youtube_app_title", "Ενημέρωση YouTube");
            hashMap.put("update_youtube_app_text", "Δεν είναι δυνατή η λειτουργία αυτής της εφαρμογής εάν δεν ενημερώσετε την εφαρμογή YouTube.");
            hashMap.put("update_youtube_app_action", "Ενημέρωση YouTube");
            return;
        }
        if ("en_GB".equals(str)) {
            hashMap.put("error_initializing_player", "An error occurred while initialising the YouTube player.");
            hashMap.put("get_youtube_app_title", "Get YouTube App");
            hashMap.put("get_youtube_app_text", "This app won't run without the YouTube App, which is missing from your device");
            hashMap.put("get_youtube_app_action", "Get YouTube App");
            hashMap.put("enable_youtube_app_title", "Enable YouTube App");
            hashMap.put("enable_youtube_app_text", "This app won't work unless you enable the YouTube App.");
            hashMap.put("enable_youtube_app_action", "Enable YouTube App");
            hashMap.put("update_youtube_app_title", "Update YouTube App");
            hashMap.put("update_youtube_app_text", "This app won't work unless you update the YouTube App.");
            hashMap.put("update_youtube_app_action", "Update YouTube App");
            return;
        }
        if ("es_US".equals(str)) {
            hashMap.put("error_initializing_player", "Se produjo un error al iniciar el reproductor de YouTube.");
            hashMap.put("get_youtube_app_title", "Obtener YouTube");
            hashMap.put("get_youtube_app_text", "Esta aplicación no se ejecutará sin la aplicación YouTube, la cual no se instaló en tu dispositivo.");
            hashMap.put("get_youtube_app_action", "Obtener YouTube");
            hashMap.put("enable_youtube_app_title", "Activar YouTube");
            hashMap.put("enable_youtube_app_text", "Esta aplicación no funcionará a menos que actives la aplicación YouTube.");
            hashMap.put("enable_youtube_app_action", "Activar YouTube");
            hashMap.put("update_youtube_app_title", "Actualizar YouTube");
            hashMap.put("update_youtube_app_text", "Esta aplicación no funcionará a menos que actualices la aplicación YouTube.");
            hashMap.put("update_youtube_app_action", "Actualizar YouTube");
            return;
        }
        if ("es".equals(str)) {
            hashMap.put("error_initializing_player", "Se ha producido un error al iniciar el reproductor de YouTube.");
            hashMap.put("get_youtube_app_title", "Descarga YouTube");
            hashMap.put("get_youtube_app_text", "Esta aplicación no funcionará sin la aplicación YouTube, que no está instalada en el dispositivo.");
            hashMap.put("get_youtube_app_action", "Descargar YouTube");
            hashMap.put("enable_youtube_app_title", "Habilita la aplicación YouTube");
            hashMap.put("enable_youtube_app_text", "Esta aplicación no funcionará si no habilitas la aplicación YouTube.");
            hashMap.put("enable_youtube_app_action", "Habilitar YouTube");
            hashMap.put("update_youtube_app_title", "Actualiza YouTube");
            hashMap.put("update_youtube_app_text", "Esta aplicación no funcionará si no actualizas la aplicación YouTube.");
            hashMap.put("update_youtube_app_action", "Actualizar YouTube");
            return;
        }
        if ("et".equals(str)) {
            hashMap.put("error_initializing_player", "YouTube'i mängija lähtestamisel tekkis viga.");
            hashMap.put("get_youtube_app_title", "YouTube'i rak. hankimine");
            hashMap.put("get_youtube_app_text", "Rakendus ei käivitu ilma YouTube'i rakenduseta ja teie seadmes see praegu puudub");
            hashMap.put("get_youtube_app_action", "Hangi YouTube'i rakendus");
            hashMap.put("enable_youtube_app_title", "YouTube'i rakenduse lubamine");
            hashMap.put("enable_youtube_app_text", "Rakendus ei toimi, kui te ei luba kasutada YouTube'i rakendust.");
            hashMap.put("enable_youtube_app_action", "Luba YouTube'i rakendus");
            hashMap.put("update_youtube_app_title", "Värskenda YouTube");
            hashMap.put("update_youtube_app_text", "Rakendus ei toimi enne, kui olete YouTube'i rakendust värskendanud.");
            hashMap.put("update_youtube_app_action", "Värsk. YouTube'i rakend.");
            return;
        }
        if ("fa".equals(str)) {
            hashMap.put("error_initializing_player", "هنگام مقداردهی اولیه پخش\u200cکننده YouTube، خطایی روی داد.");
            hashMap.put("get_youtube_app_title", "دریافت برنامه YouTube");
            hashMap.put("get_youtube_app_text", "این برنامه بدون برنامه YouTube که در دستگاه شما موجود نیست، اجرا نمی\u200cشود");
            hashMap.put("get_youtube_app_action", "دریافت برنامه YouTube");
            hashMap.put("enable_youtube_app_title", "فعال کردن برنامه YouTube");
            hashMap.put("enable_youtube_app_text", "این برنامه تنها در صورتی کار خواهد کرد که برنامه YouTube را فعال کنید.");
            hashMap.put("enable_youtube_app_action", "فعال کردن برنامه YouTube");
            hashMap.put("update_youtube_app_title", "به\u200cروزرسانی برنامه YouTube");
            hashMap.put("update_youtube_app_text", "این برنامه کار نخواهد کرد مگر اینکه برنامه YouTube را به روز کنید.");
            hashMap.put("update_youtube_app_action", "به\u200cروزرسانی برنامه YouTube");
            return;
        }
        if ("fi".equals(str)) {
            hashMap.put("error_initializing_player", "Virhe alustettaessa YouTube-soitinta.");
            hashMap.put("get_youtube_app_title", "Hanki YouTube-sovellus");
            hashMap.put("get_youtube_app_text", "Tämä sovellus ei toimi ilman YouTube-sovellusta, joka puuttuu laitteesta.");
            hashMap.put("get_youtube_app_action", "Hanki YouTube-sovellus");
            hashMap.put("enable_youtube_app_title", "Ota YouTube-sov. käyttöön");
            hashMap.put("enable_youtube_app_text", "Tämä sovellus ei toimi, ellet ota YouTube-sovellusta käyttöön.");
            hashMap.put("enable_youtube_app_action", "Ota YouTube-sov. käyttöön");
            hashMap.put("update_youtube_app_title", "Päivitä YouTube-sovellus");
            hashMap.put("update_youtube_app_text", "Tämä sovellus ei toimi, ellet päivitä YouTube-sovellusta.");
            hashMap.put("update_youtube_app_action", "Päivitä YouTube-sovellus");
            return;
        }
        if ("fr".equals(str)) {
            hashMap.put("error_initializing_player", "Une erreur s'est produite lors de l'initialisation du lecteur YouTube.");
            hashMap.put("get_youtube_app_title", "Télécharger appli YouTube");
            hashMap.put("get_youtube_app_text", "Cette application ne fonctionnera pas sans l'application YouTube, qui n'est pas installée sur votre appareil.");
            hashMap.put("get_youtube_app_action", "Télécharger appli YouTube");
            hashMap.put("enable_youtube_app_title", "Activer l'appli YouTube");
            hashMap.put("enable_youtube_app_text", "Cette application ne fonctionnera que si vous activez l'application YouTube.");
            hashMap.put("enable_youtube_app_action", "Activer l'appli YouTube");
            hashMap.put("update_youtube_app_title", "Mise à jour appli YouTube");
            hashMap.put("update_youtube_app_text", "Cette application ne fonctionnera que si vous mettez à jour l'application YouTube.");
            hashMap.put("update_youtube_app_action", "Mise à jour appli YouTube");
            return;
        }
        if ("hi".equals(str)) {
            hashMap.put("error_initializing_player", "YouTube प्लेयर को प्रारंभ करते समय कोई त्रुटि आई.");
            hashMap.put("get_youtube_app_title", "YouTube एप्लि. प्राप्त करें");
            hashMap.put("get_youtube_app_text", "यह एप्लिकेशन YouTube एप्लिकेशन के बिना नहीं चलेगा, जो आपके उपकरण पर मौजूद नहीं है");
            hashMap.put("get_youtube_app_action", "YouTube एप्लि. प्राप्त करें");
            hashMap.put("enable_youtube_app_title", "YouTube एप्लि. सक्षम करें");
            hashMap.put("enable_youtube_app_text", "जब तक आप YouTube एप्लिकेशन सक्षम नहीं करते, तब तक यह एप्लिकेशन कार्य नहीं करेगा.");
            hashMap.put("enable_youtube_app_action", "YouTube एप्लि. सक्षम करें");
            hashMap.put("update_youtube_app_title", "YouTube एप्लि. अपडेट करें");
            hashMap.put("update_youtube_app_text", "जब तक आप YouTube एप्लिकेशन अपडेट नहीं करते, तब तक यह एप्लिकेशन कार्य नहीं करेगा.");
            hashMap.put("update_youtube_app_action", "YouTube एप्लि. अपडेट करें");
            return;
        }
        if ("hr".equals(str)) {
            hashMap.put("error_initializing_player", "Dogodila se pogreška tijekom pokretanja playera usluge YouTube.");
            hashMap.put("get_youtube_app_title", "Preuzimanje apl. YouTube");
            hashMap.put("get_youtube_app_text", "Ova se aplikacija ne može pokrenuti bez aplikacije YouTube, koja nije instalirana na vaš uređaj");
            hashMap.put("get_youtube_app_action", "Preuzmi apl. YouTube");
            hashMap.put("enable_youtube_app_title", "Omogućavanje apl. YouTube");
            hashMap.put("enable_youtube_app_text", "Ova aplikacija neće funkcionirati ako ne omogućite aplikaciju YouTube.");
            hashMap.put("enable_youtube_app_action", "Omogući apl. YouTube");
            hashMap.put("update_youtube_app_title", "Ažuriranje apl. YouTube");
            hashMap.put("update_youtube_app_text", "Ova aplikacija neće funkcionirati ako ne ažurirate aplikaciju YouTube.");
            hashMap.put("update_youtube_app_action", "Ažuriraj apl. YouTube");
            return;
        }
        if ("hu".equals(str)) {
            hashMap.put("error_initializing_player", "Hiba történt a YouTube lejátszó inicializálása során.");
            hashMap.put("get_youtube_app_title", "YouTube alk. letöltése");
            hashMap.put("get_youtube_app_text", "Ez az alkalmazás nem fut a YouTube alkalmazás nélkül, amely hiányzik az eszközéről.");
            hashMap.put("get_youtube_app_action", "YouTube alk. letöltése");
            hashMap.put("enable_youtube_app_title", "YouTube alkalmazás enged.");
            hashMap.put("enable_youtube_app_text", "Az alkalmazás csak akkor fog működni, ha engedélyezi a YouTube alkalmazást.");
            hashMap.put("enable_youtube_app_action", "YouTube alkalmazás enged.");
            hashMap.put("update_youtube_app_title", "YouTube alk. frissítése");
            hashMap.put("update_youtube_app_text", "Az alkalmazás csak akkor fog működni, ha frissíti a YouTube alkalmazást.");
            hashMap.put("update_youtube_app_action", "YouTube alk. frissítése");
            return;
        }
        if ("in".equals(str)) {
            hashMap.put("error_initializing_player", "Terjadi kesalahan saat memulai pemutar YouTube.");
            hashMap.put("get_youtube_app_title", "Dapatkan Aplikasi YouTube");
            hashMap.put("get_youtube_app_text", "Aplikasi ini tidak akan berjalan tanpa Aplikasi YouTube, yang hilang dari perangkat Anda");
            hashMap.put("get_youtube_app_action", "Dapatkan Aplikasi YouTube");
            hashMap.put("enable_youtube_app_title", "Aktifkan Aplikasi YouTube");
            hashMap.put("enable_youtube_app_text", "Aplikasi ini tidak akan bekerja kecuali Anda mengaktifkan Aplikasi YouTube.");
            hashMap.put("enable_youtube_app_action", "Aktifkan Aplikasi YouTube");
            hashMap.put("update_youtube_app_title", "Perbarui Aplikasi YouTube");
            hashMap.put("update_youtube_app_text", "Aplikasi ini tidak akan bekerja kecuali Anda memperbarui Aplikasi YouTube.");
            hashMap.put("update_youtube_app_action", "Perbarui Aplikasi YouTube");
            return;
        }
        if ("it".equals(str)) {
            hashMap.put("error_initializing_player", "Si è verificato un errore durante l'inizializzazione del player di YouTube.");
            hashMap.put("get_youtube_app_title", "Scarica app YouTube");
            hashMap.put("get_youtube_app_text", "Questa applicazione non funzionerà senza l'applicazione YouTube che non è presente sul tuo dispositivo");
            hashMap.put("get_youtube_app_action", "Scarica app YouTube");
            hashMap.put("enable_youtube_app_title", "Attiva app YouTube");
            hashMap.put("enable_youtube_app_text", "Questa applicazione non funzionerà se non attivi l'applicazione YouTube.");
            hashMap.put("enable_youtube_app_action", "Attiva app YouTube");
            hashMap.put("update_youtube_app_title", "Aggiorna app YouTube");
            hashMap.put("update_youtube_app_text", "Questa applicazione non funzionerà se non aggiorni l'applicazione YouTube.");
            hashMap.put("update_youtube_app_action", "Aggiorna app YouTube");
            return;
        }
        if ("iw".equals(str)) {
            hashMap.put("error_initializing_player", "אירעה שגיאה בעת אתחול נגן YouTube.");
            hashMap.put("get_youtube_app_title", "קבל את יישום YouTube");
            hashMap.put("get_youtube_app_text", "יישום זה לא יפעל ללא יישום YouTube, שאינו מותקן במכשיר שלך");
            hashMap.put("get_youtube_app_action", "קבל את יישום YouTube");
            hashMap.put("enable_youtube_app_title", "הפעל את יישום YouTube");
            hashMap.put("enable_youtube_app_text", "יישום זה לא יעבוד אלא אם תפעיל את יישום YouTube.");
            hashMap.put("enable_youtube_app_action", "הפעל את יישום YouTube");
            hashMap.put("update_youtube_app_title", "עדכן את יישום YouTube");
            hashMap.put("update_youtube_app_text", "יישום זה לא יעבוד אלא אם תעדכן את יישום YouTube.");
            hashMap.put("update_youtube_app_action", "עדכן את יישום YouTube");
            return;
        }
        if ("ja".equals(str)) {
            hashMap.put("error_initializing_player", "YouTubeプレーヤーの初期化中にエラーが発生しました。");
            hashMap.put("get_youtube_app_title", "YouTubeアプリを入手");
            hashMap.put("get_youtube_app_text", "このアプリの実行に必要なYouTubeアプリが端末にありません");
            hashMap.put("get_youtube_app_action", "YouTubeアプリを入手");
            hashMap.put("enable_youtube_app_title", "YouTubeアプリを有効化");
            hashMap.put("enable_youtube_app_text", "このアプリの実行にはYouTubeアプリの有効化が必要です。");
            hashMap.put("enable_youtube_app_action", "YouTubeアプリを有効化");
            hashMap.put("update_youtube_app_title", "YouTubeアプリを更新");
            hashMap.put("update_youtube_app_text", "このアプリの実行にはYouTubeアプリの更新が必要です。");
            hashMap.put("update_youtube_app_action", "YouTubeアプリを更新");
            return;
        }
        if ("ko".equals(str)) {
            hashMap.put("error_initializing_player", "YouTube 플레이어를 초기화하는 중에 오류가 발생했습니다.");
            hashMap.put("get_youtube_app_title", "YouTube 앱 다운로드");
            hashMap.put("get_youtube_app_text", "이 앱은 내 기기에 YouTube 앱이 없어서 실행되지 않습니다.");
            hashMap.put("get_youtube_app_action", "YouTube 앱 다운로드");
            hashMap.put("enable_youtube_app_title", "YouTube 앱 사용 설정");
            hashMap.put("enable_youtube_app_text", "이 앱은 YouTube 앱을 사용하도록 설정하지 않으면 작동하지 않습니다.");
            hashMap.put("enable_youtube_app_action", "YouTube 앱 사용");
            hashMap.put("update_youtube_app_title", "YouTube 앱 업데이트");
            hashMap.put("update_youtube_app_text", "이 앱은 YouTube 앱을 업데이트하지 않으면 작동하지 않습니다.");
            hashMap.put("update_youtube_app_action", "YouTube 앱 업데이트");
            return;
        }
        if ("lt".equals(str)) {
            hashMap.put("error_initializing_player", "Inicijuojant „YouTube“ grotuvą įvyko klaida.");
            hashMap.put("get_youtube_app_title", "Gauti „YouTube“ programą");
            hashMap.put("get_youtube_app_text", "Ši programa neveikia be „YouTube“ programos, o jos įrenginyje nėra.");
            hashMap.put("get_youtube_app_action", "Gauti „YouTube“ programą");
            hashMap.put("enable_youtube_app_title", "Įgalinti „YouTube“ progr.");
            hashMap.put("enable_youtube_app_text", "Ši programa neveiks, jei neįgalinsite „YouTube“ programos.");
            hashMap.put("enable_youtube_app_action", "Įgalinti „YouTube“ progr.");
            hashMap.put("update_youtube_app_title", "Atnauj. „YouTube“ progr.");
            hashMap.put("update_youtube_app_text", "Ši programa neveiks, jei neatnaujinsite „YouTube“ programos.");
            hashMap.put("update_youtube_app_action", "Atnauj. „YouTube“ progr.");
            return;
        }
        if ("lv".equals(str)) {
            hashMap.put("error_initializing_player", "Inicializējot YouTube atskaņotāju, radās kļūda.");
            hashMap.put("get_youtube_app_title", "YouTube liet. iegūšana");
            hashMap.put("get_youtube_app_text", "Šī lietotne nedarbosies bez YouTube lietotnes, kuras nav šajā ierīcē.");
            hashMap.put("get_youtube_app_action", "Iegūt YouTube lietotni");
            hashMap.put("enable_youtube_app_title", "YouTube liet. iespējošana");
            hashMap.put("enable_youtube_app_text", "Lai šī lietotne darbotos, iespējojiet YouTube lietotni.");
            hashMap.put("enable_youtube_app_action", "Iespējot YouTube lietotni");
            hashMap.put("update_youtube_app_title", "YouTube liet. atjaunin.");
            hashMap.put("update_youtube_app_text", "Lai šī lietotne darbotos, atjauniniet YouTube lietotni.");
            hashMap.put("update_youtube_app_action", "Atjaun. YouTube lietotni");
            return;
        }
        if ("ms".equals(str)) {
            hashMap.put("error_initializing_player", "Ralat berlaku semasa memulakan alat main YouTube.");
            hashMap.put("get_youtube_app_title", "Dapatkan Apl YouTube");
            hashMap.put("get_youtube_app_text", "Apl ini tidak akan berjalan tanpa Apl YouTube, yang tidak ada pada peranti anda");
            hashMap.put("get_youtube_app_action", "Dapatkan Apl YouTube");
            hashMap.put("enable_youtube_app_title", "Dayakan Apl YouTube");
            hashMap.put("enable_youtube_app_text", "Apl ini tidak akan berfungsi kecuali anda mendayakan Apl YouTube.");
            hashMap.put("enable_youtube_app_action", "Dayakan Apl YouTube");
            hashMap.put("update_youtube_app_title", "Kemas kini Apl YouTube");
            hashMap.put("update_youtube_app_text", "Apl ini tidak akan berfungsi kecuali anda mengemas kini Apl YouTube.");
            hashMap.put("update_youtube_app_action", "Kemas kini Apl YouTube");
            return;
        }
        if ("nb".equals(str)) {
            hashMap.put("error_initializing_player", "Det oppsto en feil da YouTube-avspilleren startet.");
            hashMap.put("get_youtube_app_title", "Skaff deg YouTube-appen");
            hashMap.put("get_youtube_app_text", "Denne appen kan ikke kjøre uten YouTube-appen, som du ikke har på enheten");
            hashMap.put("get_youtube_app_action", "Skaff deg YouTube-appen");
            hashMap.put("enable_youtube_app_title", "Aktiver YouTube-appen");
            hashMap.put("enable_youtube_app_text", "Denne appen fungerer ikke før du aktiverer YouTube-appen.");
            hashMap.put("enable_youtube_app_action", "Aktiver YouTube-appen");
            hashMap.put("update_youtube_app_title", "Oppdater YouTube-appen");
            hashMap.put("update_youtube_app_text", "Denne appen fungerer ikke før du oppdaterer YouTube-appen.");
            hashMap.put("update_youtube_app_action", "Oppdater YouTube-appen");
            return;
        }
        if ("nl".equals(str)) {
            hashMap.put("error_initializing_player", "Er is een fout opgetreden bij het initialiseren van de YouTube-speler.");
            hashMap.put("get_youtube_app_title", "YouTube-app downloaden");
            hashMap.put("get_youtube_app_text", "Deze app wordt niet uitgevoerd zonder de YouTube-app, die op uw apparaat ontbreekt");
            hashMap.put("get_youtube_app_action", "YouTube-app downloaden");
            hashMap.put("enable_youtube_app_title", "YouTube-app inschakelen");
            hashMap.put("enable_youtube_app_text", "Deze app werkt niet, tenzij u de YouTube-app inschakelt.");
            hashMap.put("enable_youtube_app_action", "YouTube-app inschakelen");
            hashMap.put("update_youtube_app_title", "YouTube-app bijwerken");
            hashMap.put("update_youtube_app_text", "Deze app werkt niet, tenzij u de YouTube-app bijwerkt.");
            hashMap.put("update_youtube_app_action", "YouTube-app bijwerken");
            return;
        }
        if ("pl".equals(str)) {
            hashMap.put("error_initializing_player", "Podczas inicjowania odtwarzacza YouTube wystąpił błąd.");
            hashMap.put("get_youtube_app_title", "Pobierz aplikację YouTube");
            hashMap.put("get_youtube_app_text", "Ta aplikacja nie będzie działać bez aplikacji YouTube, której nie ma na tym urządzeniu");
            hashMap.put("get_youtube_app_action", "Pobierz aplikację YouTube");
            hashMap.put("enable_youtube_app_title", "Włącz aplikację YouTube");
            hashMap.put("enable_youtube_app_text", "Ta aplikacja nie będzie działać, jeśli nie włączysz aplikacji YouTube.");
            hashMap.put("enable_youtube_app_action", "Włącz aplikację YouTube");
            hashMap.put("update_youtube_app_title", "Zaktualizuj aplikację YouTube");
            hashMap.put("update_youtube_app_text", "Ta aplikacja nie będzie działać, jeśli nie zaktualizujesz aplikacji YouTube.");
            hashMap.put("update_youtube_app_action", "Zaktualizuj aplikację YouTube");
            return;
        }
        if ("pt_PT".equals(str)) {
            hashMap.put("error_initializing_player", "Ocorreu um erro ao iniciar o leitor do YouTube.");
            hashMap.put("get_youtube_app_title", "Obter a Aplicação YouTube");
            hashMap.put("get_youtube_app_text", "Esta aplicação não será executada sem a Aplicação YouTube, que está em falta no seu dispositivo");
            hashMap.put("get_youtube_app_action", "Obter a Aplicação YouTube");
            hashMap.put("enable_youtube_app_title", "Ativar Aplicação YouTube");
            hashMap.put("enable_youtube_app_text", "Esta aplicação não irá funcionar enquanto não ativar a Aplicação YouTube.");
            hashMap.put("enable_youtube_app_action", "Ativar Aplicação YouTube");
            hashMap.put("update_youtube_app_title", "Atualizar Aplica. YouTube");
            hashMap.put("update_youtube_app_text", "Esta aplicação não irá funcionar enquanto não atualizar a Aplicação YouTube.");
            hashMap.put("update_youtube_app_action", "Atualizar Aplica. YouTube");
            return;
        }
        if ("pt".equals(str)) {
            hashMap.put("error_initializing_player", "Ocorreu um erro ao inicializar o player do YouTube.");
            hashMap.put("get_youtube_app_title", "Obter aplicativo YouTube");
            hashMap.put("get_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube, que está ausente no dispositivo.");
            hashMap.put("get_youtube_app_action", "Obter aplicativo YouTube");
            hashMap.put("enable_youtube_app_title", "Ativar aplicativo YouTube");
            hashMap.put("enable_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube ativado.");
            hashMap.put("enable_youtube_app_action", "Ativar aplicativo YouTube");
            hashMap.put("update_youtube_app_title", "Atualizar aplic. YouTube");
            hashMap.put("update_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube atualizado.");
            hashMap.put("update_youtube_app_action", "Atualizar aplic. YouTube");
            return;
        }
        if ("ro".equals(str)) {
            hashMap.put("error_initializing_player", "A apărut o eroare la iniţializarea playerului YouTube.");
            hashMap.put("get_youtube_app_title", "Descărcaţi YouTube");
            hashMap.put("get_youtube_app_text", "Această aplicaţie nu va rula fără aplicaţia YouTube, care lipseşte de pe gadget");
            hashMap.put("get_youtube_app_action", "Descărcaţi YouTube");
            hashMap.put("enable_youtube_app_title", "Activaţi YouTube");
            hashMap.put("enable_youtube_app_text", "Această aplicaţie nu va funcţiona decât dacă activaţi aplicaţia YouTube.");
            hashMap.put("enable_youtube_app_action", "Activaţi YouTube");
            hashMap.put("update_youtube_app_title", "Actualizaţi YouTube");
            hashMap.put("update_youtube_app_text", "Această aplicaţie nu va funcţiona decât dacă actualizaţi aplicaţia YouTube.");
            hashMap.put("update_youtube_app_action", "Actualizaţi YouTube");
            return;
        }
        if ("ru".equals(str)) {
            hashMap.put("error_initializing_player", "Не удалось запустить проигрыватель YouTube.");
            hashMap.put("get_youtube_app_title", "Загрузите YouTube");
            hashMap.put("get_youtube_app_text", "Чтобы запустить эту программу, установите приложение YouTube.");
            hashMap.put("get_youtube_app_action", "Загрузить YouTube");
            hashMap.put("enable_youtube_app_title", "Активация YouTube");
            hashMap.put("enable_youtube_app_text", "Чтобы запустить эту программу, активируйте приложение YouTube.");
            hashMap.put("enable_youtube_app_action", "Активировать YouTube");
            hashMap.put("update_youtube_app_title", "Обновление YouTube");
            hashMap.put("update_youtube_app_text", "Чтобы запустить эту программу, обновите приложение YouTube.");
            hashMap.put("update_youtube_app_action", "Обновить YouTube");
            return;
        }
        if ("sk".equals(str)) {
            hashMap.put("error_initializing_player", "Pri inicializácii prehrávača YouTube sa vyskytla chyba.");
            hashMap.put("get_youtube_app_title", "Získať aplikáciu YouTube");
            hashMap.put("get_youtube_app_text", "Túto aplikáciu nebude možné spustiť bez aplikácie YouTube, ktorá na zariadení nie je nainštalovaná.");
            hashMap.put("get_youtube_app_action", "Získať aplikáciu YouTube");
            hashMap.put("enable_youtube_app_title", "Povoliť aplikáciu YouTube");
            hashMap.put("enable_youtube_app_text", "Táto aplikácia bude fungovať až po povolení aplikácie YouTube.");
            hashMap.put("enable_youtube_app_action", "Povoliť aplikáciu YouTube");
            hashMap.put("update_youtube_app_title", "Aktualizovať apl. YouTube");
            hashMap.put("update_youtube_app_text", "Táto aplikácia bude fungovať až po aktualizácii aplikácie YouTube.");
            hashMap.put("update_youtube_app_action", "Aktualizovať apl. YouTube");
            return;
        }
        if ("sl".equals(str)) {
            hashMap.put("error_initializing_player", "Napaka med inicializacijo YouTubovega predvajalnika.");
            hashMap.put("get_youtube_app_title", "Prenos aplikacije YouTube");
            hashMap.put("get_youtube_app_text", "Ta aplikacija ne bo delovala brez aplikacije YouTube, ki je ni v vaši napravi");
            hashMap.put("get_youtube_app_action", "Prenos aplikacije YouTube");
            hashMap.put("enable_youtube_app_title", "Omog. aplikacije YouTube");
            hashMap.put("enable_youtube_app_text", "Ta aplikacija ne bo delovala, če ne omogočite aplikacije YouTube.");
            hashMap.put("enable_youtube_app_action", "Omog. aplikacijo YouTube");
            hashMap.put("update_youtube_app_title", "Posodob. aplikacije YouTube");
            hashMap.put("update_youtube_app_text", "Ta aplikacija ne bo delovala, če ne posodobite aplikacije YouTube.");
            hashMap.put("update_youtube_app_action", "Posod. aplikacijo YouTube");
            return;
        }
        if ("sr".equals(str)) {
            hashMap.put("error_initializing_player", "Дошло је до грешке при покретању YouTube плејера.");
            hashMap.put("get_youtube_app_title", "Преузимање аплик. YouTube");
            hashMap.put("get_youtube_app_text", "Ова апликација неће функционисати без апликације YouTube, која недостаје на уређају");
            hashMap.put("get_youtube_app_action", "Преузми апликац. YouTube");
            hashMap.put("enable_youtube_app_title", "Омогућавање апл. YouTube");
            hashMap.put("enable_youtube_app_text", "Ова апликације неће функционисати ако не омогућите апликацију YouTube.");
            hashMap.put("enable_youtube_app_action", "Омогући апликац. YouTube");
            hashMap.put("update_youtube_app_title", "Ажурирање аплик. YouTube");
            hashMap.put("update_youtube_app_text", "Ова апликације неће функционисати ако не ажурирате апликацију YouTube.");
            hashMap.put("update_youtube_app_action", "Ажурирај апликац. YouTube");
            return;
        }
        if ("sv".equals(str)) {
            hashMap.put("error_initializing_player", "Ett fel uppstod när YouTube-spelaren skulle startas.");
            hashMap.put("get_youtube_app_title", "Hämta YouTube-appen");
            hashMap.put("get_youtube_app_text", "YouTube-appen krävs för att den här appen ska kunna köras. Du har inte YouTube-appen på din enhet.");
            hashMap.put("get_youtube_app_action", "Hämta YouTube-appen");
            hashMap.put("enable_youtube_app_title", "Aktivera YouTube-appen");
            hashMap.put("enable_youtube_app_text", "Du måste aktivera YouTube-appen för att den här appen ska fungera.");
            hashMap.put("enable_youtube_app_action", "Aktivera YouTube-appen");
            hashMap.put("update_youtube_app_title", "Uppdatera YouTube-appen");
            hashMap.put("update_youtube_app_text", "Du måste uppdatera YouTube-appen för att den här appen ska fungera.");
            hashMap.put("update_youtube_app_action", "Uppdatera YouTube-appen");
            return;
        }
        if ("sw".equals(str)) {
            hashMap.put("error_initializing_player", "Hitilafu ilitokea wakati wa kuanzisha kichezeshi cha YouTube.");
            hashMap.put("get_youtube_app_title", "Pata Programu ya YouTube");
            hashMap.put("get_youtube_app_text", "Programu hii haitaendeshwa bila Programu ya YouTube, ambayo inakosekana kwenye kifaa chako.");
            hashMap.put("get_youtube_app_action", "Pata Programu ya YouTube");
            hashMap.put("enable_youtube_app_title", "Wezesha Programu ya YouTube");
            hashMap.put("enable_youtube_app_text", "Programu hii haitafanya kazi isipokuwa uwezeshe Programu ya YouTube.");
            hashMap.put("enable_youtube_app_action", "Wezesha Programu ya YouTube");
            hashMap.put("update_youtube_app_title", "Sasisha Programu ya YouTube");
            hashMap.put("update_youtube_app_text", "Programu hii haitafanya kazi mpaka usasishe Programu ya YouTube.");
            hashMap.put("update_youtube_app_action", "Sasisha Programu ya YouTube");
            return;
        }
        if ("th".equals(str)) {
            hashMap.put("error_initializing_player", "เกิดข้อผิดพลาดในขณะเริ่มต้นโปรแกรมเล่น YouTube");
            hashMap.put("get_youtube_app_title", "รับแอปพลิเคชัน YouTube");
            hashMap.put("get_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานหากไม่มีแอปพลิเคชัน YouTube ซึ่งไม่มีในอุปกรณ์ของคุณ");
            hashMap.put("get_youtube_app_action", "รับแอปพลิเคชัน YouTube");
            hashMap.put("enable_youtube_app_title", "เปิดใช้งานแอป YouTube");
            hashMap.put("enable_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานจนกว่าคุณจะเปิดใช้งานแอปพลิเคชัน YouTube");
            hashMap.put("enable_youtube_app_action", "เปิดใช้งานแอป YouTube");
            hashMap.put("update_youtube_app_title", "อัปเดตแอปพลิเคชัน YouTube");
            hashMap.put("update_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานจนกว่าคุณจะอัปเดตแอปพลิเคชัน YouTube");
            hashMap.put("update_youtube_app_action", "อัปเดตแอปพลิเคชัน YouTube");
            return;
        }
        if ("tl".equals(str)) {
            hashMap.put("error_initializing_player", "May naganap na error habang sinisimulan ang player ng YouTube.");
            hashMap.put("get_youtube_app_title", "Kunin ang YouTube App");
            hashMap.put("get_youtube_app_text", "Hindi gagana ang app na ito nang wala ang YouTube App, na nawawala sa iyong device");
            hashMap.put("get_youtube_app_action", "Kunin ang YouTube App");
            hashMap.put("enable_youtube_app_title", "Paganahin ang YouTube App");
            hashMap.put("enable_youtube_app_text", "Hindi gagana ang app na ito maliban kung paganahin mo ang YouTube App.");
            hashMap.put("enable_youtube_app_action", "Paganahin ang YouTube App");
            hashMap.put("update_youtube_app_title", "I-update ang YouTube App");
            hashMap.put("update_youtube_app_text", "Hindi gagana ang app na ito maliban kung i-update mo ang YouTube App.");
            hashMap.put("update_youtube_app_action", "I-update ang YouTube App");
            return;
        }
        if ("tr".equals(str)) {
            hashMap.put("error_initializing_player", "YouTube oynatıcısı başlatılırken bir hata oluştu.");
            hashMap.put("get_youtube_app_title", "YouTube Uygulamasını edinin");
            hashMap.put("get_youtube_app_text", "Cihazınızda bulunmayan YouTube Uygulaması olmadan bu uygulama çalışmaz");
            hashMap.put("get_youtube_app_action", "YouTube Uygulamasını edinin");
            hashMap.put("enable_youtube_app_title", "YouTube Uygulamasını etkinleştirin");
            hashMap.put("enable_youtube_app_text", "YouTube Uygulamasını etkinleştirmediğiniz sürece bu uygulama çalışmaz.");
            hashMap.put("enable_youtube_app_action", "YouTube Uygulamasını etkinleştirin");
            hashMap.put("update_youtube_app_title", "YouTube Uygulamasını güncelleyin");
            hashMap.put("update_youtube_app_text", "YouTube Uygulaması güncellenmedikçe bu uygulama çalışmaz.");
            hashMap.put("update_youtube_app_action", "YouTube Uygulamasını güncelle");
            return;
        }
        if ("uk".equals(str)) {
            hashMap.put("error_initializing_player", "Під час ініціалізації програвача YouTube сталася помилка.");
            hashMap.put("get_youtube_app_title", "Отримати програму YouTube");
            hashMap.put("get_youtube_app_text", "Ця програма не запуститься без програми YouTube, яку не встановлено на вашому пристрої");
            hashMap.put("get_youtube_app_action", "Отримати програму YouTube");
            hashMap.put("enable_youtube_app_title", "Увімк. програму YouTube");
            hashMap.put("enable_youtube_app_text", "Ця програма не працюватиме, поки ви не ввімкнете програму YouTube.");
            hashMap.put("enable_youtube_app_action", "Увімк. програму YouTube");
            hashMap.put("update_youtube_app_title", "Оновити програму YouTube");
            hashMap.put("update_youtube_app_text", "Ця програма не працюватиме, поки ви не оновите програму YouTube.");
            hashMap.put("update_youtube_app_action", "Оновити програму YouTube");
            return;
        }
        if ("vi".equals(str)) {
            hashMap.put("error_initializing_player", "Đã xảy ra lỗi trong khi khởi chạy trình phát YouTube.");
            hashMap.put("get_youtube_app_title", "Tải ứng dụng YouTube");
            hashMap.put("get_youtube_app_text", "Ứng dụng này sẽ không chạy nếu không có ứng dụng YouTube, ứng dụng này bị thiếu trong thiết bị của bạn");
            hashMap.put("get_youtube_app_action", "Tải ứng dụng YouTube");
            hashMap.put("enable_youtube_app_title", "Bật ứng dụng YouTube");
            hashMap.put("enable_youtube_app_text", "Ứng dụng này sẽ không hoạt động trừ khi bạn bật ứng dụng YouTube.");
            hashMap.put("enable_youtube_app_action", "Bật ứng dụng YouTube");
            hashMap.put("update_youtube_app_title", "Cập nhật ứng dụng YouTube");
            hashMap.put("update_youtube_app_text", "Ứng dụng này sẽ không hoạt động trừ khi bạn cập nhật ứng dụng YouTube.");
            hashMap.put("update_youtube_app_action", "Cập nhật ứng dụng YouTube");
            return;
        }
        if ("zh_CN".equals(str)) {
            hashMap.put("error_initializing_player", "初始化 YouTube 播放器时出现错误。");
            hashMap.put("get_youtube_app_title", "获取 YouTube 应用");
            hashMap.put("get_youtube_app_text", "您的设备中没有 YouTube 应用，您必须先安装 YouTube 应用才能运行此应用。");
            hashMap.put("get_youtube_app_action", "获取 YouTube 应用");
            hashMap.put("enable_youtube_app_title", "启用 YouTube 应用");
            hashMap.put("enable_youtube_app_text", "您需要启用 YouTube 应用才能运行该应用。");
            hashMap.put("enable_youtube_app_action", "启用 YouTube 应用");
            hashMap.put("update_youtube_app_title", "更新 YouTube 应用");
            hashMap.put("update_youtube_app_text", "您必须更新 YouTube 应用才能运行此应用。");
            hashMap.put("update_youtube_app_action", "更新 YouTube 应用");
            return;
        }
        if ("zh_TW".equals(str)) {
            hashMap.put("error_initializing_player", "初始化 YouTube 播放器時發生錯誤。");
            hashMap.put("get_youtube_app_title", "取得 YouTube 應用程式");
            hashMap.put("get_youtube_app_text", "您必須啟用 YouTube 應用程式，這個應用程式才能運作，但系統在裝置中找不到 YouTube 應用程式。");
            hashMap.put("get_youtube_app_action", "取得 YouTube 應用程式");
            hashMap.put("enable_youtube_app_title", "啟用 YouTube 應用程式");
            hashMap.put("enable_youtube_app_text", "您必須啟用 YouTube 應用程式，這個應用程式才能運作。");
            hashMap.put("enable_youtube_app_action", "啟用 YouTube 應用程式");
            hashMap.put("update_youtube_app_title", "更新 YouTube 應用程式");
            hashMap.put("update_youtube_app_text", "您必須更新 YouTube 應用程式，這個應用程式才能運作。");
            hashMap.put("update_youtube_app_action", "更新 YouTube 應用程式");
            return;
        }
        if ("zu".equals(str)) {
            hashMap.put("error_initializing_player", "Kuvele iphutha ngenkathi kuqaliswa isidlali se-YouTube");
            hashMap.put("get_youtube_app_title", "Thola uhlelo lokusebenza lwe-YouTube");
            hashMap.put("get_youtube_app_text", "Lolu hlelo kusebenza angeke lusebenze ngaphandle kohlelo lokusebenza lwe-YouTube, olungekho kudivayisi yakho");
            hashMap.put("get_youtube_app_action", "Thola uhelo lokusebenza lwe-YouTube");
            hashMap.put("enable_youtube_app_title", "Nika amandla uhlelo lokusebenza lwe-YouTube");
            hashMap.put("enable_youtube_app_text", "Lolu hlelo lokusebenza angeke lusebenze uma unganikanga amandla uhlelo lokusebenza lwe-YouTube.");
            hashMap.put("enable_youtube_app_action", "Nika amandla uhlelo lokusebenza lwe-YouTube");
            hashMap.put("update_youtube_app_title", "Buyekeza uhlelo lokusebenza lwe-YouTube");
            hashMap.put("update_youtube_app_text", "Lolu hlelo lokusebenza angeke lusebenze uma ungabuyekezanga uhlelo lokusebenza lwe-YouTube.");
            hashMap.put("update_youtube_app_action", "Buyekeza uhlelo lokusebenza lwe-YouTube");
        }
    }
}
