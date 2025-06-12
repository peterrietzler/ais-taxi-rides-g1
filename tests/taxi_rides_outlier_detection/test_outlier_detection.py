import pytest
import pandas as pd
from pathlib import Path
from taxi_rides_outlier_detection.outlier_detector import detect_outliers

@pytest.fixture
def taxi_rides_test_data() -> pd.DataFrame:
    module_dir = Path(__file__).parent
    return  pd.read_parquet(module_dir / "taxi_ride_test_data.parquet")

def test_detect_outliers(taxi_rides_test_data: pd.DataFrame):
    outliers, metadata = detect_outliers(taxi_rides_test_data)
    assert len(outliers) == 20
