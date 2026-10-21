package com.google.firebase;

import A.i;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.PlaybackException;
import java.time.Instant;
import java.util.Date;
import kotlin.Pair;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.internal.http2.Http2Connection;
import u5.AbstractC1709h;
import x5.AbstractC1855a;

/* loaded from: classes2.dex */
public final class Timestamp implements Comparable<Timestamp>, Parcelable {
    private final int nanoseconds;
    private final long seconds;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<Timestamp> CREATOR = new Parcelable.Creator<Timestamp>() { // from class: com.google.firebase.Timestamp$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timestamp createFromParcel(Parcel source) {
            j.checkNotNullParameter(source, "source");
            return new Timestamp(source.readLong(), source.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timestamp[] newArray(int i2) {
            return new Timestamp[i2];
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Pair<Long, Integer> toPreciseTime(Date date) {
            long j7 = 1000;
            long time = date.getTime() / j7;
            int time2 = (int) ((date.getTime() % j7) * PlaybackException.CUSTOM_ERROR_CODE_BASE);
            return time2 < 0 ? AbstractC1709h.to(Long.valueOf(time - 1), Integer.valueOf(time2 + Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) : AbstractC1709h.to(Long.valueOf(time), Integer.valueOf(time2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void validateRange(long j7, int i2) {
            if (i2 < 0 || i2 >= 1000000000) {
                throw new IllegalArgumentException(i.f(i2, "Timestamp nanoseconds out of range: ").toString());
            }
            if (-62135596800L > j7 || j7 >= 253402300800L) {
                throw new IllegalArgumentException(i.i("Timestamp seconds out of range: ", j7).toString());
            }
        }

        public final Timestamp now() {
            return new Timestamp(new Date());
        }

        private Companion() {
        }
    }

    public Timestamp(long j7, int i2) {
        Companion.validateRange(j7, i2);
        this.seconds = j7;
        this.nanoseconds = i2;
    }

    public static final Timestamp now() {
        return Companion.now();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof Timestamp) && compareTo((Timestamp) obj) == 0;
        }
        return true;
    }

    public final int getNanoseconds() {
        return this.nanoseconds;
    }

    public final long getSeconds() {
        return this.seconds;
    }

    public int hashCode() {
        long j7 = this.seconds;
        return (((((int) j7) * 1369) + ((int) (j7 >> 32))) * 37) + this.nanoseconds;
    }

    public final Date toDate() {
        return new Date((this.seconds * 1000) + (this.nanoseconds / PlaybackException.CUSTOM_ERROR_CODE_BASE));
    }

    public final Instant toInstant() {
        Instant ofEpochSecond;
        ofEpochSecond = Instant.ofEpochSecond(this.seconds, this.nanoseconds);
        j.checkNotNullExpressionValue(ofEpochSecond, "ofEpochSecond(seconds, nanoseconds.toLong())");
        return ofEpochSecond;
    }

    public String toString() {
        return "Timestamp(seconds=" + this.seconds + ", nanoseconds=" + this.nanoseconds + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i2) {
        j.checkNotNullParameter(dest, "dest");
        dest.writeLong(this.seconds);
        dest.writeInt(this.nanoseconds);
    }

    @Override // java.lang.Comparable
    public int compareTo(Timestamp other) {
        j.checkNotNullParameter(other, "other");
        return AbstractC1855a.compareValuesBy(this, other, new PropertyReference1Impl() { // from class: com.google.firebase.Timestamp$compareTo$1
            @Override // N5.i
            public Object get(Object obj) {
                return Long.valueOf(((Timestamp) obj).getSeconds());
            }
        }, new PropertyReference1Impl() { // from class: com.google.firebase.Timestamp$compareTo$2
            @Override // N5.i
            public Object get(Object obj) {
                return Integer.valueOf(((Timestamp) obj).getNanoseconds());
            }
        });
    }

    public Timestamp(Date date) {
        j.checkNotNullParameter(date, "date");
        Companion companion = Companion;
        Pair preciseTime = companion.toPreciseTime(date);
        long longValue = ((Number) preciseTime.component1()).longValue();
        int intValue = ((Number) preciseTime.component2()).intValue();
        companion.validateRange(longValue, intValue);
        this.seconds = longValue;
        this.nanoseconds = intValue;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Timestamp(java.time.Instant r3) {
        /*
            r2 = this;
            java.lang.String r0 = "time"
            kotlin.jvm.internal.j.checkNotNullParameter(r3, r0)
            long r0 = b4.AbstractC0658h.c(r3)
            int r3 = b4.AbstractC0658h.b(r3)
            r2.<init>(r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.Timestamp.<init>(java.time.Instant):void");
    }
}
