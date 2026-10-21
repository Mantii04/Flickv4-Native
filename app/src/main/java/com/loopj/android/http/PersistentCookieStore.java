package com.loopj.android.http;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import cz.msebera.android.httpclient.client.CookieStore;
import cz.msebera.android.httpclient.cookie.Cookie;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class PersistentCookieStore implements CookieStore {
    private static final String COOKIE_NAME_PREFIX = "cookie_";
    private static final String COOKIE_NAME_STORE = "names";
    private static final String COOKIE_PREFS = "CookiePrefsFile";
    private static final String LOG_TAG = "PersistentCookieStore";
    private final SharedPreferences cookiePrefs;
    private final ConcurrentHashMap<String, Cookie> cookies;
    private boolean omitNonPersistentCookies = false;

    public PersistentCookieStore(Context context) {
        Cookie decodeCookie;
        SharedPreferences sharedPreferences = context.getSharedPreferences(COOKIE_PREFS, 0);
        this.cookiePrefs = sharedPreferences;
        this.cookies = new ConcurrentHashMap<>();
        String string = sharedPreferences.getString(COOKIE_NAME_STORE, null);
        if (string != null) {
            for (String str : TextUtils.split(string, ",")) {
                String string2 = this.cookiePrefs.getString(COOKIE_NAME_PREFIX + str, null);
                if (string2 != null && (decodeCookie = decodeCookie(string2)) != null) {
                    this.cookies.put(str, decodeCookie);
                }
            }
            clearExpired(new Date());
        }
    }

    @Override // cz.msebera.android.httpclient.client.CookieStore
    public void addCookie(Cookie cookie) {
        if (!this.omitNonPersistentCookies || cookie.isPersistent()) {
            String str = cookie.getName() + cookie.getDomain();
            if (cookie.isExpired(new Date())) {
                this.cookies.remove(str);
            } else {
                this.cookies.put(str, cookie);
            }
            SharedPreferences.Editor edit = this.cookiePrefs.edit();
            edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
            edit.putString(COOKIE_NAME_PREFIX + str, encodeCookie(new SerializableCookie(cookie)));
            edit.apply();
        }
    }

    public String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b7 : bArr) {
            int i2 = b7 & 255;
            if (i2 < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i2));
        }
        return sb.toString().toUpperCase(Locale.US);
    }

    @Override // cz.msebera.android.httpclient.client.CookieStore
    public void clear() {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        Iterator<String> it = this.cookies.keySet().iterator();
        while (it.hasNext()) {
            edit.remove(COOKIE_NAME_PREFIX + it.next());
        }
        edit.remove(COOKIE_NAME_STORE);
        edit.apply();
        this.cookies.clear();
    }

    @Override // cz.msebera.android.httpclient.client.CookieStore
    public boolean clearExpired(Date date) {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        boolean z6 = false;
        for (Map.Entry<String, Cookie> entry : this.cookies.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue().isExpired(date)) {
                this.cookies.remove(key);
                edit.remove(COOKIE_NAME_PREFIX + key);
                z6 = true;
            }
        }
        if (z6) {
            edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
        }
        edit.apply();
        return z6;
    }

    public Cookie decodeCookie(String str) {
        try {
            return ((SerializableCookie) new ObjectInputStream(new ByteArrayInputStream(hexStringToByteArray(str))).readObject()).getCookie();
        } catch (IOException e3) {
            AsyncHttpClient.log.d(LOG_TAG, "IOException in decodeCookie", e3);
            return null;
        } catch (ClassNotFoundException e7) {
            AsyncHttpClient.log.d(LOG_TAG, "ClassNotFoundException in decodeCookie", e7);
            return null;
        }
    }

    public void deleteCookie(Cookie cookie) {
        String str = cookie.getName() + cookie.getDomain();
        this.cookies.remove(str);
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        edit.remove(COOKIE_NAME_PREFIX + str);
        edit.apply();
    }

    public String encodeCookie(SerializableCookie serializableCookie) {
        if (serializableCookie == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ObjectOutputStream(byteArrayOutputStream).writeObject(serializableCookie);
            return byteArrayToHexString(byteArrayOutputStream.toByteArray());
        } catch (IOException e3) {
            AsyncHttpClient.log.d(LOG_TAG, "IOException in encodeCookie", e3);
            return null;
        }
    }

    @Override // cz.msebera.android.httpclient.client.CookieStore
    public List<Cookie> getCookies() {
        return new ArrayList(this.cookies.values());
    }

    public byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) (Character.digit(str.charAt(i2 + 1), 16) + (Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    public void setOmitNonPersistentCookies(boolean z6) {
        this.omitNonPersistentCookies = z6;
    }
}
