.class public final Lf1/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf1/B0;


# direct methods
.method public constructor <init>(Lf1/B0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/z0;->b:Lf1/B0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/z0;->b:Lf1/B0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/B0;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
