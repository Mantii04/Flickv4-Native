package org.threeten.bp.format;

/* loaded from: classes2.dex */
public enum SignStyle {
    NORMAL,
    ALWAYS,
    NEVER,
    NOT_NEGATIVE,
    EXCEEDS_PAD;

    public boolean parse(boolean z6, boolean z7, boolean z8) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return (z6 && z7) ? false : true;
        }
        if (ordinal == 1 || ordinal == 4) {
            return true;
        }
        return (z7 || z8) ? false : true;
    }
}
