.class public final Lf1/i;
.super Lf1/x;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lf1/k;


# direct methods
.method public constructor <init>(Lf1/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/i;->a:Lf1/k;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/x;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Lf1/G;Lf1/I;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/i;->a:Lf1/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k;->d(Lf1/G;)Lf1/S;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lf1/k;->m(Lf1/S;Lf1/I;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
