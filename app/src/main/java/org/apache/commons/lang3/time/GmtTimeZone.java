package org.apache.commons.lang3.time;

import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes2.dex */
class GmtTimeZone extends TimeZone {
    private static final int HOURS_PER_DAY = 24;
    private static final int MILLISECONDS_PER_MINUTE = 60000;
    private static final int MINUTES_PER_HOUR = 60;
    static final long serialVersionUID = 1;
    private final int offset;
    private final String zoneId;

    public GmtTimeZone(boolean z6, int i2, int i7) {
        if (i2 >= 24) {
            throw new IllegalArgumentException(i2 + " hours out of range");
        }
        if (i7 >= 60) {
            throw new IllegalArgumentException(i7 + " minutes out of range");
        }
        int i8 = ((i2 * 60) + i7) * 60000;
        this.offset = z6 ? -i8 : i8;
        StringBuilder sb = new StringBuilder(9);
        sb.append(TimeZones.GMT_ID);
        sb.append(z6 ? '-' : '+');
        StringBuilder twoDigits = twoDigits(sb, i2);
        twoDigits.append(':');
        this.zoneId = twoDigits(twoDigits, i7).toString();
    }

    private static StringBuilder twoDigits(StringBuilder sb, int i2) {
        sb.append((char) ((i2 / 10) + 48));
        sb.append((char) ((i2 % 10) + 48));
        return sb;
    }

    public boolean equals(Object obj) {
        return (obj instanceof GmtTimeZone) && this.zoneId == ((GmtTimeZone) obj).zoneId;
    }

    @Override // java.util.TimeZone
    public String getID() {
        return this.zoneId;
    }

    @Override // java.util.TimeZone
    public int getOffset(int i2, int i7, int i8, int i9, int i10, int i11) {
        return this.offset;
    }

    @Override // java.util.TimeZone
    public int getRawOffset() {
        return this.offset;
    }

    public int hashCode() {
        return this.offset;
    }

    @Override // java.util.TimeZone
    public boolean inDaylightTime(Date date) {
        return false;
    }

    @Override // java.util.TimeZone
    public void setRawOffset(int i2) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return "[GmtTimeZone id=\"" + this.zoneId + "\",offset=" + this.offset + ']';
    }

    @Override // java.util.TimeZone
    public boolean useDaylightTime() {
        return false;
    }
}
