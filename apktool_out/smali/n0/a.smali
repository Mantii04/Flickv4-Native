.class public abstract Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance(Landroidx/lifecycle/t;)Ln0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/t;",
            ":",
            "Landroidx/lifecycle/j0;",
            ">(TT;)",
            "Ln0/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln0/d;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Landroidx/lifecycle/j0;

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/lifecycle/j0;->getViewModelStore()Landroidx/lifecycle/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Ln0/d;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/i0;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract markForRedelivery()V
.end method
