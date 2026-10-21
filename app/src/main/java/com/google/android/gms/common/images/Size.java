package com.google.android.gms.common.images;

/* loaded from: classes.dex */
public final class Size {
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(23);
        sb.append("0x0");
        return sb.toString();
    }
}
