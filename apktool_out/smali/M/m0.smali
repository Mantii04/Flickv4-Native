.class public final LM/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:LM/M;


# direct methods
.method public constructor <init>(LM/M;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/m0;->a:LM/M;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    .line 1
    invoke-static {p2}, LM/m;->toContentInfoCompat(Landroid/view/ContentInfo;)LM/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LM/m0;->a:LM/M;

    .line 6
    .line 7
    check-cast v1, LS/B;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, LS/B;->onReceiveContent(Landroid/view/View;LM/m;)LM/m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_1
    invoke-virtual {p1}, LM/m;->toContentInfo()Landroid/view/ContentInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
