.class final Landroid/app/ColorInjector$ContextImpl$2;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ColorInjector$ContextImpl;->registerServices(Landroid/app/ColorInjector$ContextImpl$ServiceRegister;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 52
    invoke-static {}, Lcom/color/screenshot/ColorScreenshotManager;->getInstance()Lcom/color/screenshot/ColorScreenshotManager;

    move-result-object v0

    return-object v0
.end method
