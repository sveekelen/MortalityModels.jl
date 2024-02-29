"""
    LC_SVD(mMu)

    Input:
        mMu = matrix containing log forces of mortality for a given population

    Output:
        vAx = constant age effects in a LC model
        vBx = age effects in a LC model 
        vKt = period effects in a LC model

    Summary: function used to fit a LC model on the log force of mortality with a SVD decomposition
"""
function LC_SVD(mMu)

    # Calculate Aₓ as the average log μ over time
    vAx = mean(mMu, dims = 2)
    
    # Create time demeaned log μ matrix
    mMu_dm = mMu .- vAx

    # Perform SVD on demeaned matrix
    objSVD = svd(mMu_dm)

    # Get βₓ and κₜ
    vBx = -objSVD.U[:,1]
    vKt = -objSVD.Vt[1,:] * objSVD.S[1]

    # return age and period effects 
    return (Kt = vKt, Ax = vAx, Bx = vBx)

end