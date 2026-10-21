package flix.com.vision.bvp;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
final class OnSwipeTouchListener$Direction {

    /* renamed from: b, reason: collision with root package name */
    public static final OnSwipeTouchListener$Direction f15956b;

    /* renamed from: e, reason: collision with root package name */
    public static final OnSwipeTouchListener$Direction f15957e;

    /* renamed from: f, reason: collision with root package name */
    public static final OnSwipeTouchListener$Direction f15958f;

    /* renamed from: j, reason: collision with root package name */
    public static final OnSwipeTouchListener$Direction f15959j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ OnSwipeTouchListener$Direction[] f15960m;

    static {
        OnSwipeTouchListener$Direction onSwipeTouchListener$Direction = new OnSwipeTouchListener$Direction("LEFT", 0);
        f15956b = onSwipeTouchListener$Direction;
        OnSwipeTouchListener$Direction onSwipeTouchListener$Direction2 = new OnSwipeTouchListener$Direction("RIGHT", 1);
        f15957e = onSwipeTouchListener$Direction2;
        OnSwipeTouchListener$Direction onSwipeTouchListener$Direction3 = new OnSwipeTouchListener$Direction("UP", 2);
        f15958f = onSwipeTouchListener$Direction3;
        OnSwipeTouchListener$Direction onSwipeTouchListener$Direction4 = new OnSwipeTouchListener$Direction("DOWN", 3);
        f15959j = onSwipeTouchListener$Direction4;
        f15960m = new OnSwipeTouchListener$Direction[]{onSwipeTouchListener$Direction, onSwipeTouchListener$Direction2, onSwipeTouchListener$Direction3, onSwipeTouchListener$Direction4};
    }

    public static OnSwipeTouchListener$Direction valueOf(String str) {
        return (OnSwipeTouchListener$Direction) Enum.valueOf(OnSwipeTouchListener$Direction.class, str);
    }

    public static OnSwipeTouchListener$Direction[] values() {
        return (OnSwipeTouchListener$Direction[]) f15960m.clone();
    }
}
