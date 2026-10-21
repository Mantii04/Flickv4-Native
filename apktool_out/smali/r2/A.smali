.class public abstract Lr2/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/W;


# instance fields
.field public final a:Lr2/E;


# direct methods
.method public constructor <init>(Lr2/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/E;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/A;->a:Lr2/E;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final build(Lr2/f0;)Lr2/V;
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
    new-instance p1, Lr2/H;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/A;->a:Lr2/E;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lr2/H;-><init>(Lr2/E;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
