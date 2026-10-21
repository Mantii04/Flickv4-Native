.class public final LR5/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/I;


# static fields
.field public static final b:LR5/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LR5/i0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LR5/i0;->b:LR5/i0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ly5/k;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method
