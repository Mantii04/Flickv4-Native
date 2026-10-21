.class public final Ls2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/W;


# instance fields
.field public final a:Lr2/T;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr2/T;

    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lr2/T;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ls2/a;->a:Lr2/T;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public build(Lr2/f0;)Lr2/V;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/f0;",
            ")",
            "Lr2/V;"
        }
    .end annotation

    .line 1
    new-instance p1, Ls2/b;

    .line 2
    .line 3
    iget-object v0, p0, Ls2/a;->a:Lr2/T;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ls2/b;-><init>(Lr2/T;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
