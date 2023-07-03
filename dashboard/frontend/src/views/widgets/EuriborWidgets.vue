<template>
  <CRow>
    <CCol :xs="3">
      <CWidgetStatsA class="mb-4" color="primary">
        <template #value
          >1.99%
          <span class="fs-6 fw-formal">
            (-0.04% <CIcon icon="cil-arrow-bottom" />)
          </span>
        </template>
        <template #title>Euribor 3M</template>
        <template #chart>
          <CChart
            type="line"
            class="mt-3 mx-3"
            style="height: 70px"
            :data="{
              labels: [
                '2022-12-09',
                '2022-12-10',
                '2022-12-11',
                '2022-12-12',
                '2022-12-13',
              ],
              datasets: [
                {
                  label: 'Euribor 3M dataset',
                  backgroundColor: 'transparent',
                  borderColor: 'rgba(255,255,255,.55)',
                  pointBackgroundColor: '#321fdb',
                  data: [1.89, 1.9, 1.91, 1.92, 1.91],
                },
              ],
            }"
            :options="{
              plugins: {
                legend: {
                  display: false,
                },
              },
              maintainAspectRatio: false,
              scales: {
                x: {
                  grid: {
                    display: false,
                    drawBorder: false,
                  },
                  ticks: {
                    display: false,
                  },
                },
                y: {
                  min: 1,
                  max: 2,
                  display: false,
                  grid: {
                    display: false,
                  },
                  ticks: {
                    display: false,
                  },
                },
              },
              elements: {
                line: {
                  borderWidth: 1,
                  tension: 0.4,
                },
                point: {
                  radius: 4,
                  hitRadius: 10,
                  hoverRadius: 4,
                },
              },
            }"
          />
        </template>
      </CWidgetStatsA>
    </CCol>
  </CRow>
</template>

<script>
import { CChart } from '@coreui/vue-chartjs'
export default {
  name: 'Euribor3M',
  components: {
    CChart,
  },
}
</script>
