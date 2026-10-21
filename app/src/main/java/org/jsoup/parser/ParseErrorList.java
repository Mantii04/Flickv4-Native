package org.jsoup.parser;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public class ParseErrorList extends ArrayList<k6.c> {

    /* renamed from: b, reason: collision with root package name */
    public final int f19239b;

    public ParseErrorList(int i2, int i7) {
        super(i2);
        this.f19239b = i7;
    }

    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }

    public static ParseErrorList tracking(int i2) {
        return new ParseErrorList(16, i2);
    }

    public final boolean a() {
        return size() < this.f19239b;
    }
}
