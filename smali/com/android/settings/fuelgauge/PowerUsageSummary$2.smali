.class Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryInfoLoader;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/fuelgauge/BatteryInfoLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ")V"
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargePreference()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p2, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
