.class public abstract Ld0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ld0/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefault()Ld0/d;
    .locals 1

    .line 1
    sget-object v0, Ld0/d;->a:Ld0/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld0/e;

    .line 6
    .line 7
    invoke-direct {v0}, Ld0/e;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ld0/d;->a:Ld0/e;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Ld0/d;->a:Ld0/e;

    .line 13
    .line 14
    return-object v0
.end method
