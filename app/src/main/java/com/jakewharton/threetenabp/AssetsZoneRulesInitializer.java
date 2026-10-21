package com.jakewharton.threetenabp;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import org.threeten.bp.zone.TzdbZoneRulesProvider;
import org.threeten.bp.zone.ZoneRulesInitializer;
import org.threeten.bp.zone.ZoneRulesProvider;

/* loaded from: classes2.dex */
final class AssetsZoneRulesInitializer extends ZoneRulesInitializer {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13315a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13316b;

    public AssetsZoneRulesInitializer(Context context, String str) {
        this.f13315a = context;
        this.f13316b = str;
    }

    @Override // org.threeten.bp.zone.ZoneRulesInitializer
    public void initializeProviders() {
        String str = this.f13316b;
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f13315a.getAssets().open(str);
                TzdbZoneRulesProvider tzdbZoneRulesProvider = new TzdbZoneRulesProvider(inputStream);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                ZoneRulesProvider.registerProvider(tzdbZoneRulesProvider);
            } catch (IOException e3) {
                throw new IllegalStateException(str + " missing from assets", e3);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
