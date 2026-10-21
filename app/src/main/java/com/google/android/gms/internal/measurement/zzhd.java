package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import com.google.common.base.Optional;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.apache.commons.lang3.StringUtils;
import p.q;

/* loaded from: classes2.dex */
public final class zzhd {

    public static class zza {
        private static volatile Optional<zzhe> zza;

        private zza() {
        }

        public static Optional<zzhe> zza(Context context) {
            Optional<zzhe> optional;
            Optional<zzhe> zza2;
            boolean isDeviceProtectedStorage;
            Optional<zzhe> optional2 = zza;
            if (optional2 != null) {
                return optional2;
            }
            synchronized (zza.class) {
                try {
                    optional = zza;
                    if (optional == null) {
                        new zzhd();
                        if (zzhh.zza(Build.TYPE, Build.TAGS)) {
                            if (zzgp.zza()) {
                                isDeviceProtectedStorage = context.isDeviceProtectedStorage();
                                if (!isDeviceProtectedStorage) {
                                    context = context.createDeviceProtectedStorageContext();
                                }
                            }
                            zza2 = zzhd.zza(context);
                        } else {
                            zza2 = Optional.absent();
                        }
                        optional = zza2;
                        zza = optional;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return optional;
        }
    }

    private static zzhe zza(Context context, File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                q qVar = new q();
                HashMap hashMap = new HashMap();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        Log.w("HermeticFileOverrides", "Parsed " + String.valueOf(file) + " for Android package " + context.getPackageName());
                        zzgv zzgvVar = new zzgv(qVar);
                        bufferedReader.close();
                        return zzgvVar;
                    }
                    String[] split = readLine.split(StringUtils.SPACE, 3);
                    if (split.length != 3) {
                        Log.e("HermeticFileOverrides", "Invalid: " + readLine);
                    } else {
                        String zza2 = zza(split[0]);
                        String decode = Uri.decode(zza(split[1]));
                        String str = (String) hashMap.get(split[2]);
                        if (str == null) {
                            String zza3 = zza(split[2]);
                            str = Uri.decode(zza3);
                            if (str.length() < 1024 || str == zza3) {
                                hashMap.put(zza3, str);
                            }
                        }
                        q qVar2 = (q) qVar.get(zza2);
                        if (qVar2 == null) {
                            qVar2 = new q();
                            qVar.put(zza2, qVar2);
                        }
                        qVar2.put(decode, str);
                    }
                }
            } finally {
            }
        } catch (IOException e3) {
            throw new RuntimeException(e3);
        }
    }

    private static Optional<File> zzb(Context context) {
        try {
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? Optional.of(file) : Optional.absent();
        } catch (RuntimeException e3) {
            Log.e("HermeticFileOverrides", "no data dir", e3);
            return Optional.absent();
        }
    }

    public static Optional<zzhe> zza(Context context) {
        Optional<zzhe> absent;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            Optional<File> zzb = zzb(context);
            if (zzb.isPresent()) {
                absent = Optional.of(zza(context, zzb.get()));
            } else {
                absent = Optional.absent();
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return absent;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    private static final String zza(String str) {
        return new String(str);
    }
}
