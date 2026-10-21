.class public final Lp5/d;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/hopmonsdk/service/MoneytiserService;


# direct methods
.method public constructor <init>(Lio/hopmonsdk/service/MoneytiserService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp5/d;->a:Lio/hopmonsdk/service/MoneytiserService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getService()Lio/hopmonsdk/service/MoneytiserService;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5/d;->a:Lio/hopmonsdk/service/MoneytiserService;

    .line 2
    .line 3
    return-object v0
.end method
