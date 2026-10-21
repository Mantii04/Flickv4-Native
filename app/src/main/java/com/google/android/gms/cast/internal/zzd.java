package com.google.android.gms.cast.internal;

import androidx.media3.common.PlaybackException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class zzd extends zzp {

    /* renamed from: d, reason: collision with root package name */
    public final List f10386d;

    public zzd(String str, String str2, String str3) {
        super(str, "MediaControlChannel", null);
        this.f10386d = Collections.synchronizedList(new ArrayList());
    }

    public final List zza() {
        return this.f10386d;
    }

    public final void zzb() {
        synchronized (this.f10386d) {
            try {
                Iterator it = this.f10386d.iterator();
                while (it.hasNext()) {
                    ((zzau) it.next()).zzc(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc(zzau zzauVar) {
        this.f10386d.add(zzauVar);
    }
}
