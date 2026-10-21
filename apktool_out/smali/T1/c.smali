.class public abstract LT1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 1

    .line 1
    sget p0, LT1/c;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-lez p0, :cond_0

    .line 5
    .line 6
    add-int/lit8 p0, p0, -0x1

    .line 7
    .line 8
    sput p0, LT1/c;->a:I

    .line 9
    .line 10
    :cond_0
    return v0
.end method
