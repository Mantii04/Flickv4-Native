.class public abstract LR5/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LY5/e;

.field public static final b:LY5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LY5/e;->j:LY5/e;

    .line 2
    .line 3
    sput-object v0, LR5/U;->a:LY5/e;

    .line 4
    .line 5
    sget v0, LR5/P0;->f:I

    .line 6
    .line 7
    sget-object v0, LY5/d;->f:LY5/d;

    .line 8
    .line 9
    sput-object v0, LR5/U;->b:LY5/d;

    .line 10
    .line 11
    return-void
.end method

.method public static final getDefault()LR5/E;
    .locals 1

    .line 1
    sget-object v0, LR5/U;->a:LY5/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getIO()LR5/E;
    .locals 1

    .line 1
    sget-object v0, LR5/U;->b:LY5/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getMain()LR5/E0;
    .locals 1

    .line 1
    sget-object v0, LW5/w;->a:LR5/E0;

    .line 2
    .line 3
    return-object v0
.end method
