.class public final Lr/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr/i;

.field public final b:Lr/i;

.field public c:[Lr/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr/i;

    .line 5
    .line 6
    invoke-direct {v0}, Lr/i;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lr/i;

    .line 10
    .line 11
    invoke-direct {v0}, Lr/i;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lr/d;->a:Lr/i;

    .line 15
    .line 16
    new-instance v0, Lr/i;

    .line 17
    .line 18
    invoke-direct {v0}, Lr/i;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lr/d;->b:Lr/i;

    .line 22
    .line 23
    const/16 v0, 0x20

    .line 24
    .line 25
    new-array v0, v0, [Lr/m;

    .line 26
    .line 27
    iput-object v0, p0, Lr/d;->c:[Lr/m;

    .line 28
    .line 29
    return-void
.end method
