#ifndef __Viscosity_QuickHoney_h__
#define __Viscosity_QuickHoney_h__
#include "SPlisHSPlasH/Common.h"
#include "SPlisHSPlasH/FluidModel.h"
#include "ViscosityBase.h"
#include "SPlisHSPlasH/Utilities/MatrixFreeSolver.h"


namespace SPH
{

	class Viscosity_QuickHoney : public ViscosityBase
	{
	protected:
		std::vector<Real> m_density;
		std::vector<Matrix3r> m_targetNablaV;
		typedef Eigen::ConjugateGradient<MatrixReplacement, Eigen::Lower | Eigen::Upper, JacobiPreconditioner1D> Solver;
		Solver m_solver;
		unsigned int m_iterations;
		unsigned int m_maxIter;
		Real m_maxError;

		virtual void initParameters();
		void computeDensities();

	public:
		static int ITERATIONS;
		static int MAX_ITERATIONS;
		static int MAX_ERROR;

		Viscosity_QuickHoney(FluidModel *model);
		virtual ~Viscosity_QuickHoney(void);

		virtual void step();
		virtual void reset();

		virtual void performNeighborhoodSearchSort();

		static void matrixVecProd(const Real* vec, Real *result, void *userData);
		FORCE_INLINE static void diagonalMatrixElement(const unsigned int row, Real &result, void *userData);

		FORCE_INLINE const Matrix3r& getTargetNablaV(const unsigned int i) const
		{
			return m_targetNablaV[i];
		}

		FORCE_INLINE Matrix3r& getTargetNablaV(const unsigned int i)
		{
			return m_targetNablaV[i];
		}

		FORCE_INLINE void setTargetNablaV(const unsigned int i, const Matrix3r &val)
		{
			m_targetNablaV[i] = val;
		}
	};
}

#endif
