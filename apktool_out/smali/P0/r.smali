.class public final synthetic LP0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/p;


# instance fields
.field public final synthetic a:LP0/u;


# direct methods
.method public synthetic constructor <init>(LP0/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/r;->a:LP0/u;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LP0/r;->a:LP0/u;

    check-cast p1, LP0/J;

    invoke-virtual {v0, p1}, LP0/u;->modifyTrack(LP0/J;)LP0/J;

    move-result-object p1

    return-object p1
.end method
