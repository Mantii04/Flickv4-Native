package B4;

import flix.com.vision.events.SystemEvent$ACTION;
import flix.com.vision.models.PlayerEvent;

/* renamed from: B4.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0050m {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f272a;

    static {
        int[] iArr = new int[PlayerEvent.ACTION.values().length];
        f272a = iArr;
        try {
            iArr[PlayerEvent.ACTION.COMPLETED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f272a[PlayerEvent.ACTION.ERROR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f272a[PlayerEvent.ACTION.PREPARED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f272a[PlayerEvent.ACTION.PLAY.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f272a[PlayerEvent.ACTION.PAUSE.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            new int[SystemEvent$ACTION.values().length][0] = 1;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
