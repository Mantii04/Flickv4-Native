package e;

import android.content.res.Configuration;
import android.os.LocaleList;

/* loaded from: classes.dex */
public abstract class O {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales;
        LocaleList locales2;
        boolean equals;
        locales = configuration.getLocales();
        locales2 = configuration2.getLocales();
        equals = locales.equals(locales2);
        if (equals) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static I.o b(Configuration configuration) {
        LocaleList locales;
        String languageTags;
        locales = configuration.getLocales();
        languageTags = locales.toLanguageTags();
        return I.o.forLanguageTags(languageTags);
    }

    public static void c(Configuration configuration, I.o oVar) {
        LocaleList forLanguageTags;
        forLanguageTags = LocaleList.forLanguageTags(oVar.toLanguageTags());
        configuration.setLocales(forLanguageTags);
    }

    public static void setDefaultLocales(I.o oVar) {
        LocaleList forLanguageTags;
        forLanguageTags = LocaleList.forLanguageTags(oVar.toLanguageTags());
        LocaleList.setDefault(forLanguageTags);
    }
}
