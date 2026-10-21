package flix.com.vision.models;

import android.content.Context;
import android.util.Log;
import b.c;
import java.text.ParseException;
import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public class C4969w {
    public static String m19279a(int i2) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("utc"));
        calendar.set(13, 0);
        calendar.set(14, 0);
        char[] charArray = String.valueOf((calendar.getTimeInMillis() / 1000) ^ i2).toCharArray();
        String str = "";
        for (int i7 = 0; i7 < charArray.length; i7++) {
            StringBuilder o6 = c.o(str);
            o6.append(charArray[i7]);
            o6.append(String.valueOf(i7));
            str = o6.toString();
        }
        return str;
    }

    public static String m19280a(Context context, String str) {
        String trim = str.trim();
        Log.i("mytag", "token1: " + trim);
        an anVar = new an(trim);
        int length = trim.length();
        anVar.m18824a(length - 36);
        anVar.m18824a(length - 45);
        anVar.m18824a(length - 54);
        anVar.m18824a(length - 61);
        Log.i("mytag", "token2: " + anVar);
        return anVar.toString();
    }

    public static String m19281a(Context context, String str, String str2, int i2) throws ParseException {
        return ak.m18795a(context, str.trim(), str2);
    }

    public static String m19282a() {
        char[] charArray = String.valueOf((Calendar.getInstance(TimeZone.getTimeZone("utc")).getTimeInMillis() + 1825) ^ 16842788).toCharArray();
        String str = "";
        for (int i2 = 0; i2 < charArray.length; i2++) {
            StringBuilder o6 = c.o(str);
            o6.append(charArray[charArray.length - 1]);
            o6.append(String.valueOf(i2));
            str = o6.toString();
        }
        return str;
    }
}
