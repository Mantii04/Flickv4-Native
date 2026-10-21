.class public Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/Interpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/view/animation/Interpolator;

.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    .line 11
    .line 12
    const/high16 v5, 0x3e800000    # 0.25f

    .line 13
    .line 14
    const v6, 0x3e5fcc7e

    .line 15
    .line 16
    .line 17
    const v1, 0x3d19999a    # 0.0375f

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const v3, 0x3e03dadf

    .line 22
    .line 23
    .line 24
    const v4, 0x3db75fc0

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 28
    .line 29
    .line 30
    const v5, 0x3ef77777

    .line 31
    .line 32
    .line 33
    const v6, 0x3efaca7f

    .line 34
    .line 35
    .line 36
    const v1, 0x3ea512f7

    .line 37
    .line 38
    .line 39
    const v2, 0x3e975a46

    .line 40
    .line 41
    .line 42
    const v3, 0x3edf92c6

    .line 43
    .line 44
    .line 45
    const v4, 0x3ed5ce8b

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 49
    .line 50
    .line 51
    const/high16 v5, 0x3f800000    # 1.0f

    .line 52
    .line 53
    const/high16 v6, 0x3f800000    # 1.0f

    .line 54
    .line 55
    const v1, 0x3f30a3d7    # 0.69f

    .line 56
    .line 57
    .line 58
    const v2, 0x3f4f4a01    # 0.80972296f

    .line 59
    .line 60
    .line 61
    const v3, 0x3f4b17e5

    .line 62
    .line 63
    .line 64
    const v4, 0x3f733442

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, LO/b;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    .line 75
    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
