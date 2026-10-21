package com.google.android.gms.common.data;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

@KeepForSdk
@KeepName
@SafeParcelable.Class
/* loaded from: classes.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {

    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zaf();

    /* renamed from: b, reason: collision with root package name */
    public final int f10824b;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f10825e;

    /* renamed from: f, reason: collision with root package name */
    public Bundle f10826f;

    /* renamed from: j, reason: collision with root package name */
    public final CursorWindow[] f10827j;

    /* renamed from: m, reason: collision with root package name */
    public final int f10828m;

    /* renamed from: n, reason: collision with root package name */
    public final Bundle f10829n;

    /* renamed from: p, reason: collision with root package name */
    public int[] f10830p;

    /* renamed from: q, reason: collision with root package name */
    public int f10831q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f10832r = false;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f10833s = true;

    @KeepForSdk
    public static class Builder {
    }

    static {
        new ArrayList();
        new HashMap();
    }

    public DataHolder(int i2, String[] strArr, CursorWindow[] cursorWindowArr, int i7, Bundle bundle) {
        this.f10824b = i2;
        this.f10825e = strArr;
        this.f10827j = cursorWindowArr;
        this.f10828m = i7;
        this.f10829n = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public void close() {
        synchronized (this) {
            try {
                if (!this.f10832r) {
                    this.f10832r = true;
                    int i2 = 0;
                    while (true) {
                        CursorWindow[] cursorWindowArr = this.f10827j;
                        if (i2 >= cursorWindowArr.length) {
                            break;
                        }
                        cursorWindowArr[i2].close();
                        i2++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finalize() throws Throwable {
        try {
            if (this.f10833s && this.f10827j.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    @KeepForSdk
    public byte[] getByteArray(String str, int i2, int i7) {
        Bundle bundle = this.f10826f;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i2 < 0 || i2 >= this.f10831q) {
            throw new CursorIndexOutOfBoundsException(i2, this.f10831q);
        }
        return this.f10827j[i7].getBlob(i2, this.f10826f.getInt(str));
    }

    @KeepForSdk
    public int getCount() {
        return this.f10831q;
    }

    @KeepForSdk
    public Bundle getMetadata() {
        return this.f10829n;
    }

    @KeepForSdk
    public int getStatusCode() {
        return this.f10828m;
    }

    @KeepForSdk
    public int getWindowIndex(int i2) {
        int length;
        int i7 = 0;
        Preconditions.checkState(i2 >= 0 && i2 < this.f10831q);
        while (true) {
            int[] iArr = this.f10830p;
            length = iArr.length;
            if (i7 >= length) {
                break;
            }
            if (i2 < iArr[i7]) {
                i7--;
                break;
            }
            i7++;
        }
        return i7 == length ? i7 - 1 : i7;
    }

    @KeepForSdk
    public boolean isClosed() {
        boolean z6;
        synchronized (this) {
            z6 = this.f10832r;
        }
        return z6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.f10825e, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.f10827j, i2, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.f10824b);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i2 & 1) != 0) {
            close();
        }
    }

    public final void zad() {
        this.f10826f = new Bundle();
        int i2 = 0;
        while (true) {
            String[] strArr = this.f10825e;
            if (i2 >= strArr.length) {
                break;
            }
            this.f10826f.putInt(strArr[i2], i2);
            i2++;
        }
        CursorWindow[] cursorWindowArr = this.f10827j;
        this.f10830p = new int[cursorWindowArr.length];
        int i7 = 0;
        for (int i8 = 0; i8 < cursorWindowArr.length; i8++) {
            this.f10830p[i8] = i7;
            i7 += cursorWindowArr[i8].getNumRows() - (i7 - cursorWindowArr[i8].getStartPosition());
        }
        this.f10831q = i7;
    }
}
