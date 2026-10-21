.class public abstract LT2/h;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static builder()LT2/g;
    .locals 1

    .line 1
    new-instance v0, LT2/a;

    .line 2
    .line 3
    invoke-direct {v0}, LT2/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getEvents()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "LS2/u;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtras()[B
.end method
