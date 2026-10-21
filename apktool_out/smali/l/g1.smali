.class public final Ll/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ll/l1;


# direct methods
.method public constructor <init>(Ll/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/g1;->b:Ll/l1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/g1;->b:Ll/l1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/l1;->clearListSelection()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
