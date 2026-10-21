.class public final LG3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/o;


# instance fields
.field public final synthetic a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LG3/h;->a:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(LG3/c;)LG3/c;
    .locals 2

    .line 1
    instance-of v0, p1, LG3/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, LG3/b;

    .line 7
    .line 8
    iget v1, p0, LG3/h;->a:F

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, LG3/b;-><init>(FLG3/c;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
