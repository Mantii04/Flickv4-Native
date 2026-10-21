.class public abstract Ld2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "r"

    .line 2
    .line 3
    const-string v1, "hd"

    .line 4
    .line 5
    const-string v2, "nm"

    .line 6
    .line 7
    const-string v3, "p"

    .line 8
    .line 9
    const-string v4, "s"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ld2/y;->a:Le2/a;

    .line 20
    .line 21
    return-void
.end method
