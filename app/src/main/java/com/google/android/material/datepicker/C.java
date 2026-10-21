package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class C implements Comparable, Parcelable {
    public static final Parcelable.Creator<C> CREATOR = new B();

    /* renamed from: b, reason: collision with root package name */
    public final Calendar f12581b;

    /* renamed from: e, reason: collision with root package name */
    public final int f12582e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12583f;

    /* renamed from: j, reason: collision with root package name */
    public final int f12584j;

    /* renamed from: m, reason: collision with root package name */
    public final int f12585m;

    /* renamed from: n, reason: collision with root package name */
    public final long f12586n;

    /* renamed from: p, reason: collision with root package name */
    public String f12587p;

    public C(Calendar calendar) {
        calendar.set(5, 1);
        Calendar a7 = M.a(calendar);
        this.f12581b = a7;
        this.f12582e = a7.get(2);
        this.f12583f = a7.get(1);
        this.f12584j = a7.getMaximum(7);
        this.f12585m = a7.getActualMaximum(5);
        this.f12586n = a7.getTimeInMillis();
    }

    public static C b(int i2, int i7) {
        Calendar c7 = M.c(null);
        c7.set(1, i2);
        c7.set(2, i7);
        return new C(c7);
    }

    public static C d(long j7) {
        Calendar c7 = M.c(null);
        c7.setTimeInMillis(j7);
        return new C(c7);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        String formatDateTime;
        DateFormat instanceForSkeleton;
        TimeZone timeZone;
        DisplayContext unused;
        if (this.f12587p == null) {
            long timeInMillis = this.f12581b.getTimeInMillis();
            if (Build.VERSION.SDK_INT >= 24) {
                Locale locale = Locale.getDefault();
                AtomicReference atomicReference = M.f12601a;
                instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
                timeZone = TimeZone.getTimeZone("UTC");
                instanceForSkeleton.setTimeZone(timeZone);
                unused = DisplayContext.CAPITALIZATION_FOR_STANDALONE;
                instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
                formatDateTime = instanceForSkeleton.format(new Date(timeInMillis));
            } else {
                formatDateTime = DateUtils.formatDateTime(null, timeInMillis, 8228);
            }
            this.f12587p = formatDateTime;
        }
        return this.f12587p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c7 = (C) obj;
        return this.f12582e == c7.f12582e && this.f12583f == c7.f12583f;
    }

    public final int f(C c7) {
        if (!(this.f12581b instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (c7.f12582e - this.f12582e) + ((c7.f12583f - this.f12583f) * 12);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f12582e), Integer.valueOf(this.f12583f)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12583f);
        parcel.writeInt(this.f12582e);
    }

    @Override // java.lang.Comparable
    public int compareTo(C c7) {
        return this.f12581b.compareTo(c7.f12581b);
    }
}
